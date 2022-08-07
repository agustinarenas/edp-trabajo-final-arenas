#!/bin/bash

[[ ! -e $1  || $# -ne 1 ]] && echo "El archivo no existe o no ingreso un argumento" && exit 1

f=$(cat $1)
line=0

for i in $f
do
	c_esp=${i: -1}
	case $c_esp in 
		'.' | ':')
			if [ $line -eq 1 ]; then
        	        	echo $i >> filetemporal.txt
			else
				orac=$(echo $orac $i)
                                echo $orac >> filetemporal.txt
				line=1
				orac=""
			fi
		;;
		*)
			orac=$(echo $orac $i)
			line=0
	esac
done

cant_l=$(cat filetemporal.txt | wc -l)

o_l=0
o_c=10000
long=0
line=0

for i in $(seq 1 $cant_l)
do
	orac=$(cat filetemporal.txt | head -$i | tail -1)
        n_carac=${#orac}
	#echo $n_carac
        long=$((n_carac+long))
        if [ $n_carac -gt $o_l ]; then
                o_l=$n_carac
                oracion_l=$orac
        fi
        if [ $n_carac -lt $o_c ]; then
                o_c=$n_carac
                oracion_c=$orac
        fi
done

prom=$(echo "scale=1; $long/$cant_l" | bc)
echo "La oracion mas larga tiene $o_l caracteres. La oracion es: $oracion_l"
echo "La oracion mas corta tiene $o_c caracteres. La oracion es: $oracion_c"
echo "El promedio de longitud de oracion es $prom"
rm filetemporal.txt
exit 0
