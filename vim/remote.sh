#!/bin/bash
echo 'Syncing vim settings'

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
NOW=$(date +"%m_%d_%Y")
# Symlink the vimrc file
echo 'Creating .vimrc'
if [ -f ~/.vimrc ]
then
    rm -f ~/.vimrc
fi

cp ${DIR}/_vimrc ~/.vimrc

echo 'Create directories'
mkdir -p ~/.vim/ ~/.vim_plugins

# Setup vim directories
echo 'Syncing .vim directory'
rsync --del -r --exclude=autoload ${DIR}/_vim/ ~/.vim/

# Install Plugin
mkdir -p ~/.vim/autoload
if [ ! -f ~/.vim/autoload/plug.vim ]
then
    echo 'installing vim-plug'
    curl -fLo ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
    echo 'vim-plug already installed'
fi

# Remove Plugins I don't want on remote
for PLUG in youcompleteme ultisnips syntastic ansible fugitive javascript
do
    grep -v "$PLUG" ~/.vim/plugins.vim > /tmp/plugins.tmp; mv /tmp/plugins.tmp ~/.vim/plugins.vim
done


vim +PlugUpgrade +PlugClean! +PlugUpdate +qa
