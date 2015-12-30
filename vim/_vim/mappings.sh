#!/usr/bin/env bash

ag "noremap" ~/.vim --ignore mappings.sh --nogroup --nocolor | cut -d' ' -f2- | sort
