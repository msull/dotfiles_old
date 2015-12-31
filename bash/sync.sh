#!/bin/bash

echo 'Syncing bash settings'

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
rsync -r --exclude sync.sh ${DIR}/ ~/ 