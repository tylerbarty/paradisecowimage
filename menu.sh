#!/bin/sh

choice=""

echo
echo '1) `cowsay`'
echo

read -p 'Menu: ' choice

set -x
case $choice in
	'1') exec cowsay 'Paradise Donuts loves BYU';;
	*) echo "Invalid menu number! Leaving now.";;
esac
