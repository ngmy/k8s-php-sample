#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)

cd $SCRIPT_DIR

PROJECT_DIR=$(realpath "${SCRIPT_DIR}/../")

cat $@ | \
    sed "s#{{ PROJECT_DIR }}#${PROJECT_DIR}#g"
