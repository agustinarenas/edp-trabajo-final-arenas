#!/bin/bash

f=$(cat $1)
for i in $f
do
	c_esp=${i: -1}
	case $c_esp in 
		',' | '.' | ';' | ':')
			i=${i:0:-1}
		;;
	esac

	n_carac=${#i}
	if [ $n_carac -ge 4 ]; then
		echo $i >> filetemporal.txt
	fi
	#echo $i
done
cat filetemporal.txt | sort | uniq -c | sort -n -r | head -n 10
rm filetemporal.txt
exit 0
