#!/bin/bash

echo 'Syncing tmux settings'

mkdir -p ~/.tmux_plugins

if [ ! -e ~/.tmux_plugins/tmux-resurrect/resurrect.tmux ]; then
    git clone https://www.github.com/tmux-plugins/tmux-resurrect ~/.tmux_plugins/tmux-resurrect
else
    git -C ~/.tmux_plugins/tmux-resurrect pull
fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# NOW=$(date +"%m_%d_%Y")
# rsync -r --exclude sync.sh ${DIR}/ ~/ 
cp -f ${DIR}/_tmux.conf ~/.tmux.conf
cp -f ${DIR}/_tmux-old-mouse.conf ~/.tmux-old-mouse.conf
cp -f ${DIR}/_tmux-new-mouse.conf ~/.tmux-new-mouse.conf
