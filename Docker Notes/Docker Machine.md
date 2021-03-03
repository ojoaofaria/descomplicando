Para verificar se ele foi instalado e qual a sua versão, faça:
# docker-machine version
# docker-machine create --driver virtualbox linuxtips
# docker-machine ls
# docker-machine env linuxtips
# eval "$(docker-machine env linuxtips)"
# docker container ls
# docker container run busybox echo "LINUXTIPS, VAIIII"
# docker-machine ip linuxtips
# docker-machine ssh linuxtips
# docker-machine inspect linuxtips
# docker-machine stop linuxtips
# docker-machine ls
# docker-machine start linuxtips
# docker-machine rm linuxtips
# eval $(docker-machine env -u)