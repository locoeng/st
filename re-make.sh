#!/bin/bash

set -e # Exit immediately if a command exits with a non-zero status
#set -x # Print each command before execution

gum style \
	--foreground 255 --border-foreground 212 --border double \
	--align center --width 50 --margin "1 2" --padding "2 4" \
	'Make suckless st' 'this script will remove config.h'
gum log --structured --level debug "Creating file..." name file.txt
# Remove config.h
gum confirm "Remove config.h" && rm config.h || echo "File NOT removed"

make clean
 
make install
