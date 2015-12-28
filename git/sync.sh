#!/bin/bash

echo 'Syncing git settings'

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
NOW=$(date +"%m_%d_%Y")
# Symlink the vimrc file
echo 'Symlinking global git config'
if [ -L ~/.gitconfig ]
then
    echo 'Already a symlink'
    unlink ~/.gitconfig
    ln -s ${DIR}/.gitconfig ~/.gitconfig
else
    echo 'Backing up existing .gitconfig'
    mv ~/.gitconfig ~/.gitconfig.bak-${NOW}
    ln -s ${DIR}/.gitconfig ~/.gitconfig
fi
