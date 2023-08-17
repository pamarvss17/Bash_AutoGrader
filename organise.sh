#!/bin/bash
mkdir organised
cat mock_grading/roll_list | while read line
do
		mkdir organised/$line
			ls -d mock_grading/submissions/$line* | while read line1
				do 
							ln -s ${PWD}/$line1 ${PWD}/organised/$line
								done
							done
