#!/bin/bash

if ! command -v jq &> /dev/null; then
echo "jq 未安装，请先安装 jq"
exit 1
fi

# cd /

merge_lang(){
  for path in $(find "./"  -type f -regex ".*/\(en\)\.json$" -print0 | xargs -0 -n1 dirname); do
    files=$(ls $path/*.json)
    output_folder="./dist"
    
    for file in $files; do
      filename=$(basename $file .json)

      jq -s add $file > $output_folder/release.$filename.json
    done

    zip -r $output_folder.zip $output_folder
  done
}
merge_lang

