#!/usr/bin/env bash

ag "map" ~/.vim --ignore mappings.sh --nogroup --nocolor | cut -d' ' -f3- | sort
