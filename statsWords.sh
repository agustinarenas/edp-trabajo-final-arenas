
#!/bin/bash 

[[ ! -e $1  || $# -ne 1 ]] && echo "El archivo no existe o no ingreso un argumento" && exit 1

f=$(cat $1)
count=0
p_l=0
p_c=1000
long=0
for i in $f
do
	c_esp=${i: -1}
	case $c_esp in 
		',' | '.' | ';' | ':')
			i=${i:0:-1}
		;;
	esac
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
	#echo $i
done
prom=$((long/count))
echo "La palabra mas larga tiene $p_l caracteres. La palabra es: $palabra_l"
echo "La palabra mas corta tiene $p_c caracteres. La palabra es: $palabra_c"
echo "El promedio de longitud de palabras es $prom"

#exit 0

