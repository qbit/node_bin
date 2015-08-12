#!/bin/sh

for i in $(jq .dependencies package.json | grep ":" |  awk -F: '{print $1}'); do
	P=$(echo $i | sed -e 's/"//g');
	npm install "$P@latest" --save;
done
