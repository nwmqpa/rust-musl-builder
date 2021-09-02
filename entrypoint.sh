#!/bin/bash

if [ -n "$2" ] && [ -n "$3" ]; then
	git config --global url."https://$GH_USER:$GH_PATH@github.com".insteadOf "https://github.com"
fi

bash -c $1
