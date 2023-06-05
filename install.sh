#!/usr/bin/sh

if [ $(which apt-get) ]; then
	echo "Installing deps for running groundhog"
	echo "......"
else
	echo "You'll need to install Ubuntu to run groundhog"

fi
