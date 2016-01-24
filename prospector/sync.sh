#!/bin/bash
echo 'Syncing prospector settings'

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
NOW=$(date +"%m_%d_%Y")

echo 'Create directories'
mkdir -p ~/.prospector/

echo 'Syncing .prospector directory'
rsync --del -r --exclude=autoload ${DIR}/_prospector/ ~/.prospector/
