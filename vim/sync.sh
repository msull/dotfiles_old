#!/bin/bash
echo 'Syncing vim settings'

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
NOW=$(date +"%m_%d_%Y")
# Symlink the vimrc file
echo 'Symlinking .vimrc'
if [ -L ~/.vimrc ]
then
    echo 'Already a symlink'
    unlink ~/.vimrc
    ln -s ${DIR}/.vimrc ~/.vimrc
else
    echo 'Backing up existing .vimrc'
    mv ~/.vimrc ~/.vimrc.bak-${NOW}
    ln -s ${DIR}/.vimrc ~/.vimrc
fi

# Setup directories
echo 'Syncing Snippets'
mkdir -p ~/.vim/UltiSnips
rsync --del -r ${DIR}/snippets/ ~/.vim/UltiSnips/

# Install Pathogen
if [ ! -e ~/.vim/autoload/pathogen.vim ]
then
    echo 'Installing Pathogen'
    mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
else
    echo 'Pathogen already installed'
fi

