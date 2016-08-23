#!/bin/sh

gradle --build-file ${1}/build.gradle assemble publish writeVersionFile -PrepoUrl=$REPO_URL -PrepoUsername=$REPO_USERNAME -PrepoPassword=$REPO_PASSWORD

echo "Copying version file to '${2}/VERSION'"
cp ${1}/build/VERSION ${2}/VERSION
