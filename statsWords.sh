#!/bin/bash 

f=$(head $1)
count=0
p_l=0
p_c=1000
long=0
for i in $f
do
	count=$((count+1))
	n_carac=${#i}
	long=$((n_carac+long))
	if [ $n_carac -gt $p_l ]; then
		p_l=$n_carac
		palabra_l=$i
	fi
        if [ $n_carac -lt $p_c ]; then
                p_c=$n_carac
                palabra_c=$i
        fi
done
prom=$(echo "scale=1; $long/$count" | bc)
echo "La palabra mas larga tiene $p_l caracteres. La palabra es: $palabra_l"
echo "La palabra mas corta tiene $p_c caracteres. La palabra es: $palabra_c"
echo "El promedio de longitud de palabras es $prom"
exit 0
