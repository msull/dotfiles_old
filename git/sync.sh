#!/bin/bash

echo 'Syncing git settings'

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# NOW=$(date +"%m_%d_%Y")
rsync -r --exclude sync.sh ${DIR}/ ~/ 