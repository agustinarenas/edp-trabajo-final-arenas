# edp-trabajo-final-arenas
Repositorio del trabajo final de la materia Entorno de programación.

1_Explicación de los scripts

2_Ejecucion del contenedor

3_Ejecución de la aplicación

## 1_Explicación de los scripts:

En el script statsWords.sh, se coloco un controlador de argumentos a modo de evitar ingresos no reconocidos. En pocas palabras una vez recibido el argumento (archivo de text) su contenido se asigna a una variable (comando cat). Luego sobre la misma se itera a modo de obtener la palabra mas larga y la mas corta para determinar la cantidad de caracteres se uso ${#i}, antes se hizo una limpieza de caracteres especiales usando case. Finalmente tambien se habia incorporado un caontador de palabras para luego obtener el promedio.

En el script  statsUsageWords.sh, tambien se coloco el controlador de argumentos. Similar al anterior script se volco el contenido en una variable y se itero sobre la misma, tambien se hizo la limpieza de caracteres especiales. Dentro de la iteración se filtraba las palabras con cantidad de caracteres mayores a 4 y se lo guardaba en un archivo temporal linea por linea. Al finalizar la iteración se aplico una pipeline al archivo temporal con el fin de obtener las 10 palabras mas repetidas ordenadas de mayor a menor. Finalizado se elimina el archivo temporal.

En el script findNames.sh, similar a los anteriores se aplico lo del contenido del archivo y la iteración. Tambien se limpio los caracteres especiales. En este caso se armo una expresión regular a modo de filtrar las palabras que empiezan con mayuscula y los demas caracteres son minusculas, dicha expresion se guardo en la variable regex para usarlo despues en un if, en el mismo las palabras que cumplian con el condicional se guardaban en un archivo temporal linea a linea. Finalizado la iteracion se hizo un pipeline al archivo temporal a modo de limpiar palabras repetidas. Al final se elimina el archivo temporal.

En el script statsSentences.sh, similar inicio. Ya en la iteración sobre la variable, se construyo oraciones linea por linea en un archivo temporal dichas oraciones son las que se encontraban en el archivo y a criterio de cuando terminaba la oración se tomo como toda palabra que su último caracter era un punto o dos puntos. Con un pipeline se determino la cantidad de oraciones en el archivo temporal con dicho resultado se itero en un for con el comando seq. Se creo un pipeline a modo de iterar sobra cada linea del archivo, luego se siguio la misma lógica que el primer script. Finalizado se ejecuta rm para borrar el archivo temporal.

En el script blankLinesCounter.sh, se coloco el controlador de argumentos, luego se cuenta las lineas del archivo con el comando wc guardandolo en variable, despues con el comando grep se filtra aquellas lineas que su contenido no esta vacio y se lo guarda en un archivo temporal. Despues sobre ese mismo archivo se cuentan las lineas sobre una variable, para depues eliminar el archivo y hacer la diferencia entre las dos variables a modo de obtener las lineas en blanco.

En el sript menu.sh con select se creo un menú con los distintos scripts para poder aprobechar todos los scripts en un mismo script.

## 2_Ejecución del contenedor:

CONSTRUCCIÓN DE LA IMAGEN:

Instalar Docker desde la pagina oficial siguiendo las instrucciones de la pagina para una correcta instalación.

Con el Dockerfile del repositorio se construye la imagen edp:v1.0.0, mediante la ejecución del siguiente comando:

```

$ docker build --tag edp:v1.0.0 .

```
Antes descargar el Dockerfile en el directorio donde se va a correr el contenedor. Para incorporar un archivo de texto editar el Dockerfile, agregando un ADD debajo del ultimo ADD que hay en el archivo de la siguiente forma:(Para editar el Dockerfile en el directorio abrir una terminal en el directorio e ingresar el comando nano Dockerfile):

ADD ["archivodetexto.txt" ,"/root/"]

Luego para correr el contenedor con la imagen creada ejecutar el siguiente comando:
```

docker run -it edp:v1.0.0

```
Tener en cuenta que la ejecución de este ultimo comando activa la aplicación directamente para interactuar con la misma.

## 2_Ejecución de la aplicación:

Ejecutado el comando anteriormente dicho, la aplicación solicita ingresar el nombre del archivo (Ej: texto.txt.txt)




















