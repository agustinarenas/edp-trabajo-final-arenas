# edp-trabajo-final-arenas
Repositorio del trabajo final de la materia Entorno de programación.

1_Explicación de los scripts

2_Ejecucion del contenedor

3_Ejecución de la aplicación

## 1_Explicación de los scripts:

En el script statsWords.sh, se coloco un controlador de argumentos a modo de evitar ingresos no reconocidos. En pocas palabras una vez recibido el argumento (archivo de text) su contenido se asigna a una variable (comando cat). Luego sobre la misma se itera a modo de obtener la palabra mas larga y la mas corta para determinar la cantidad de caracteres se uso ${#i}, antes se hizo una limpieza de caracteres especiales usando select. Finalmente tambien se habia incorporado un caontador de palabras para luego obtener el promedio.

En el script  statsUsageWords.sh, tambien se coloco el controlador de argumentos. Similar al anterior script se volco el contenido en una variable y se itero sobre la misma, tambien se hizo la limpieza de caracteres especiales. Dentro de la iteración se filtraba las palabras con cantidad de caracteres mayores a 4 y se lo guardaba en un archivo temporal linea por linea. Al finalizar la iteración se aplico una pipeline al archivo temporal con el fin de obtener las 10 palabras mas repetidas ordenadas de mayor a menor.

En el script findNames.sh,
