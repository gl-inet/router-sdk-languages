#!/bin/bash

if ! command -v jq &> /dev/null; then
echo "jq 未安装，请先安装 jq"
exit 1
fi

# cd /
output_folder="./dist"
mkdir -p "$output_folder"

merge_lang(){
  for path in $(find "./"  -type f -regex ".*/\(en\)\.json$" -print0 | xargs -0 -n1 dirname); do
    files=$(ls $path/*.json)
    
    for file in $files; do
      filename=$(basename $file .json)
      echo $filename
      jq -s add $file >  $output_folder/release.$filename.json
    done
    echo $(ls $output_folder)
    zip -r $output_folder.zip $output_folder
  done
}
merge_lang

