FROM ubuntu:20.04

MAINTAINER Estudiante TUIA - EDP

ADD ["menu.sh" ,"/root/"]
ADD ["statsWords.sh" ,"/root/"]
ADD ["statsUsageWords.sh" ,"/root/"]
ADD ["findNames.sh" ,"/root/"]
ADD ["statsSentences.sh" ,"/root/"]
ADD ["blankLinesCounter.sh" ,"/root/"]
ADD ["texto.txt" ,"/root/"]

ENTRYPOINT ["/root/menu.sh"]
