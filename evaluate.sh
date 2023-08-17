#!/bin/bash
touch marksheet.csv distribution.txt
i=0
for file in ls mock_grading/inputs
do
		((i++))
	done
	cat mock_grading/roll_list | while read line
do
		marks=0
			n=0
			        mkdir organised/$line/student_outputs
				        ls organised/$line | while read line1
					        do
							                g++ $line1 2>/dev/null
									        done
										        while (( n < i ))
												        do
														                timeout 5s "organised/$line/./executable" < mock_grading/inputs/$n.in > organised/$line/student_outputs/$n.out  2>/dev/null
																                if cmp -s mock_grading/outputs/$n.out organised/$line/student_outputs/$n.out ; then
																			                        ((marks++))
																						                fi
																										((n++))
																										        done
																											        echo "$line,$marks" >> marksheet.csv
																												        echo "$marks" >> distribution.txt
																												done
																												sort -nr distribution.txt | cat > distribution.txt
