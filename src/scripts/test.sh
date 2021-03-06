#!/bin/bash
prog1=$1 #program to test
dir1=$2 #test files dir
dir2=$3 #result files dir

for filename in `ls -tr $dir1`; do
		file=$filename
		file=$(echo $file| cut -d'/' -f 3)
		file=$(echo $file| cut -d'.' -f 1)
		c=$(echo $file| cut -d'_' -f 1)
		d=$(echo $file| cut -d'_' -f 2)
		echo $c"_"$d".in"

	./$prog1 < $dir1/$filename > $dir2/"test.out"

	if ! cmp -s $dir2/"test.out" $dir2/$c"_"$d".out"; then
		echo "There are something wrong."
		break;
	else
		echo "Everthing ok."		
	fi
done
