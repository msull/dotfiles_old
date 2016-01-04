#!/bin/bash

echo 'Syncing tmux settings'

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# NOW=$(date +"%m_%d_%Y")
# rsync -r --exclude sync.sh ${DIR}/ ~/ 
cp -f ${DIR}/_tmux.conf ~/.tmux.conf
