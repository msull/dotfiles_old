#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for SUBDIR in bash git vim tmux prospector
do
    FULLPATH="${DIR}/${SUBDIR}/sync.sh"
    echo $FULLPATH
    [ -r "${FULLPATH}" ] && [ -f "${FULLPATH}" ] && "${FULLPATH}";
done
unset SUBDIR;
