#!/bin/bash
# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <URL> <JSON_File>"
    exit 1
fi

url=$1
json_file=$2

# Check if the JSON file exists
if [ ! -f "$json_file" ]; then
    echo "Error: JSON file not found: $json_file"
    exit 1
fi

# Make a POST request with the content of the JSON file in the body
curl -sX POST -d "@$json_file" -H "Content-Type: application/json" "$url"
