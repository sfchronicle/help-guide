#!/bin/bash

# Get ready to build this project!

echo "Checking if remote data needs to be pulled..."
sheets=$(node -pe 'JSON.parse(process.argv[1]).sheets' "$(cat project.json)")
docs=$(node -pe 'JSON.parse(process.argv[1]).docsID' "$(cat project.json)")

# If length of the string is greater than 2, needs running
if [ ${#sheets} -gt 2 ]; then
	npm run sheets
fi

# Update the config based on the deploy type
# fulljson=$(node -pe 'JSON.parse(process.argv[1])' "$(cat project.json)")
# node -p "JSON.stringify({...$fulljson, \"deployDestination\": \"$1\"}, null, 2)" > project.json


