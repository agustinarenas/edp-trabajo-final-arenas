#!/bin/bash 

[[ ! -e $1  || $# -ne 1 ]] && echo "El archivo no existe o no ingreso un argumento" && exit 1

f=$(cat $1)
regex="^[A-Z][a-z]*$"
echo "Las palabras que inician con mayuscula en el archivo son:"
for i in $f
do
	c_esp=${i: -1}
	case $c_esp in 
		',' | '.' | ';' | ':')
			i=${i:0:-1}
		;;
	esac

	if [[ "${i}" =~ ${regex} ]]; then
		echo $i >> filetemporal.txt	
	fi
done
cat filetemporal.txt | sort | uniq
rm filetemporal.txt

#exit 0
