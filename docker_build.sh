#!/bin/bash

#Push to github
docker build -t "docker.pkg.github.com/r26d/generate-changelog/generate-changelog:v${1}" .
docker build -t "docker.pkg.github.com/r26d/generate-changelog/generate-changelog:latest" .
docker push "docker.pkg.github.com/r26d/generate-changelog/generate-changelog:latest"
docker push "docker.pkg.github.com/r26d/generate-changelog/generate-changelog:v${1}"

##Push to docker
docker build -t "delmendo/generate-changelog:v${1}" .
docker build -t delmendo/generate-changelog:latest .
docker push delmendo/generate-changelog:latest
docker push "delmendo/generate-changelog:v${1}"
