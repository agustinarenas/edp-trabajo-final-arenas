#!/bin/bash

[[ ! -e $1  || $# -ne 1 ]] && echo "El archivo no existe o no ingreso un argumento" && exit 1
echo "Las diez palabras mas repetidas son: "
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
