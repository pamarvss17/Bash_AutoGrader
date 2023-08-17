#!/bin/bash

if [ $# = 2 ]; then
		wget -r -nH -np -R index.html,index.html.tmp --cut-dirs $2 -q "$1"
	else 
			echo "Usage: bash download.sh <link to directory> <cut-dirs argument>"
				exit 1
fi
