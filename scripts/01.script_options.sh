#!/usr/bin/env bash

set -x # debugging option
echo "hello"

set +x
ls -al

set -e # 오류 발생시 즉시 종류
lsl -al
ls -al