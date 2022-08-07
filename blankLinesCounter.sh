#!/bin/bash

[[ ! -e $1  || $# -ne 1 ]] && echo "El archivo no existe o no ingreso un argumento" && exit 1

l_t=$(wc -l < $1)

grep -v '^$' $1 > filetemporal.txt

l_sb=$(wc -l < filetemporal.txt)

rm filetemporal.txt

c_lb=$((l_t-l_sb))


echo "La cantidad de lineas en blanco que posee el archivo es: $c_lb"

exit 0
