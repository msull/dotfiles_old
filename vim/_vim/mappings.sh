#!/usr/bin/env bash

clear
ag "let mapleader" ~/.vim --ignore mappings.sh --ignore plug.vim --nogroup --nocolor | cut -d':' -f3-
echo
ag "^.noremap" ~/.vim --ignore mappings.sh --ignore plug.vim --nogroup --nocolor | cut -d':' -f3- | sort
