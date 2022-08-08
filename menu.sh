#!/bin/bash

echo "Ingrese el nombre del archivo de texto a analizar (Ej: archivo.txt): "
read arch
arch=/root/$arch
PS3='Elija una opcion: '

echo "Menu de aplicaciones:"

select opcion in "Longitud_de_palabras" "Las_10_palabras_mas_usadas" "Palabras_con_inicial_Mayuscula" "Longitud_de_oraciones" "Cantidad_de_lineas_en_blanco" "SALIR"
do
	[ -e $opcion ] && echo "Elegir una opcion valida!" && continue
	[ $REPLY -eq 6 ] && echo "Hasta luego" && break
	echo "######################## $opcion ########################"
	[ $REPLY -eq 1 ] && . /root/statsWords.sh $arch
	[ $REPLY -eq 2 ] && . /root/statsUsageWords.sh $arch
	[ $REPLY -eq 3 ] && . /root/findNames.sh $arch
	[ $REPLY -eq 4 ] && . /root/statsSentences.sh $arch
	[ $REPLY -eq 5 ] && . /root/blankLinesCounter.sh $arch
done

exit 0


