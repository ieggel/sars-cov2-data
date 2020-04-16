#!/bin/sh

usage='Usage: docker_run.sh [OPTION]
 OPTIONS:
  --build: builds docker image before execution'

if [[ $# -eq 1  ]] && [[ $1 == '--build' ]]; then
    ./docker_build.sh
elif [[ $# -eq 1  ]]; then
    echo "Unknown argument: $1. \n$usage"
    exit 1
elif [[ $# -ne 0 ]]; then
    echo "Supply either 0 or 1 arguments. \n$usage"
    exit 1
fi
   
docker run --rm --name 'sars-cov2-data' -v $(pwd)/../../sars-cov2-data:/project -w /project medgift/sars-cov2-data python pipeline.py