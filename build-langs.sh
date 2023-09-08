#!/bin/bash

if ! command -v jq &> /dev/null; then
  echo "jq is not installed, please install jq first."
  exit 1
fi

output_folder="./gl-router-sdk-languages"
rm -rf "$output_folder"
rm -rf "$output_folder.zip"
mkdir -p "$output_folder"

merge_lang() {
  merged_json=""
  for path in $(find "./" -type f -regex ".*/\(en\)\.json$" -print0 | xargs -0 -n1 dirname); do
    files=$(ls "$path"/*.json)
    for file in $files; do
      filename=$(basename "$file" .json)
      output_file="$output_folder/release.$filename.json"
      if [ -f "$output_file" ]; then
        merged_json=$(jq -s 'reduce .[] as $item ({}; . * $item)' "$output_file" "$file")
      else
        merged_json=$(jq -s add "$file")
      fi
      echo "$merged_json" > "$output_file"
    done
  done
  zip -r "$output_folder.zip" "$output_folder"
}

merge_lang

