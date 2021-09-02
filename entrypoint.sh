#!/bin/bash

if [ -n "$2" ] && [ -n "$3" ]; then
	git config --global url."https://$2:$3@github.com".insteadOf "https://github.com"
fi

bash -c $1
