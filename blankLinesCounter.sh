#!/bin/bash

[[ ! -e $1  || $# -ne 1 ]] && echo "El archivo no existe o no ingreso un argumento" && exit 1

wc -l < $1

grep -v '^$' $1 > filetemporal.txt
cat filetemporal.txt

wc -l < filetemporal.txt
