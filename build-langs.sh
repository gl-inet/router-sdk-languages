#!/bin/bash

# if ! command -v jq &> /dev/null; then
# echo "jq 未安装，请先安装 jq"
# exit 1
# fi

# cd /

merge_lang(){
        for path in $(find "./"  -type f -regex ".*/\(en\)\.json$" -print0 | xargs -0 -n1 dirname); do

                files=$(ls $path/*.json)
        
                for file in $files; do
                      echo  $file
                done
	done
}
merge_lang

