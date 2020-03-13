#!/bin/sh -l

git-ftp push \
  --syncroot $INPUT_SYNCROOT \
  --user $INPUT_USER \
  --passwd $INPUT_PASSWORD \
  $INPUT_OPTIONS
  $INPUT_URL
