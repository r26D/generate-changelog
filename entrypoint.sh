#!/bin/bash -l
set -e

if [[ -z "${INPUT_FILE}" ]]; then
  echo "You must set a file for the output"
  exit 127
fi
if [[ -z "${INPUT_NEXT_TAG}" ]]; then
  NEXT_TAG=""
  else
    NEXT_TAG="--next-tag ${INPUT_NEXT_TAG}"
fi

/bin/git-chglog --output ${INPUT_FILE} ${NEXT_TAG}
