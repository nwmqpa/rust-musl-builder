#!/bin/bash

if [ -n "$2" ] && [ -n "$3" ]; then
	echo -e '[url \"https://$GH_USER:$GH_PAT@github.com/\"]\n\tinsteadOf = https://github.com/' >> ~/.gitconfig
fi

bash -c $1
