#!/bin/sh

jiraNumber=$(git branch --show-current | grep -E "/[A-Z]{2,6}-[0-9]{4,}" -o | grep -E "[^/]+" -o)
commitMessage=$(cat "$1")

if [[ "$jiraNumber" != "" ]]; then
  echo "$jiraNumber: $commitMessage" > "$1"
fi
