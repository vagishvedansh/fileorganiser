#!/bin/bash

declare -A CATEGORIES=(
    ["Images"]="jpg jpeg png gif svg webp"
    ["Documents"]="pdf doc docx txt md"
    ["Archives"]="zip tar gz 7z rar"
    ["Video"]="mp4 mkv avi mov"
    ["Audio"]="mp3 wav flac aac"
    ["Code"]="py js html css c cpp java sh"
)

get_category() {
    local ext=$1
    for category in "${!CATEGORIES[@]}"; do
        if [[ " ${CATEGORIES[$category]} " =~ " $ext " ]]; then
            echo "$category"
            return
        fi
    done
    echo "Others"
}

echo "Cleaning up directory: $(pwd)"

for file in *; do
    if [[ -d "$file" || "$file" == "organize.sh" ]]; then
        continue
    fi

    ext="${file##*.}"
    ext=$(echo "$ext" | tr '[:upper:]' '[:lower:]')

    category=$(get_category "$ext")
    
    if [[ ! -d "$category" ]]; then
        mkdir -p "$category"
        echo "Created folder: $category"
    fi

    mv "$file" "$category/"
    echo "Moved $file -> $category/"
done

echo "Done! 🚀"
