#!/bin/bash


if [ -n "$2" ] && [ -n "$3" ]; then
	git config --global url."https://$2:$3@github.com".insteadOf "https://github.com"
fi

if [ -n "$4" ] && [ -n "$5" ] && [ -n "$6" ]; then
	SCCACHE_BUCKET="$4"
	AWS_ACCESS_KEY_ID="$5"
	AWS_SECRET_ACCESS_KEY="$6"
	mkdir -p $HOME/.cargo
	echo -e "[build]\nrustc-wrapper = \"$(which sccache)\"\n" >> $HOME/.cargo/config
fi

bash -c $1
