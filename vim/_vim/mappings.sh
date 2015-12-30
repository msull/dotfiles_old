#!/usr/bin/env bash

ag "noremap" ~/.vim --ignore mappings.sh --ignore plug.vim --nogroup --nocolor | cut -d' ' -f2- | sort
