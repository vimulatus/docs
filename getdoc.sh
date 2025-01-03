#!/bin/bash

source_file=../api/swagger/documentation.json
dest_file=./api-reference/openapi.json

if [ ! -f "$source_file" ]; then
  echo "Error: Source file '$source_file' does not exist"
  exit 1
fi

cp "$source_file" "$dest_file"

if [ $? -eq 0 ]; then
  echo "Successfully copied '$source_file' to '$dest_file'"
else
  echo "Error: Failed to copy file"
  exit 1
fi
