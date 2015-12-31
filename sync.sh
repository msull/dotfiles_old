#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for subdir in {bash,git,vim}/sync.sh; do
    [ -r "${DIR}${subdirfile}" ] && [ -f "${DIR}${subdirfile}" ] && "${DIR}${subdirfile}";
done;
unset subdir;
