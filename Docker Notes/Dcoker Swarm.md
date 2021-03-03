### docker swarm —help

### Iniciando o SWARM

> docker swarm init

### É preciso escolher a interface de rede que será a principal para comunicação entre os nodes.

> docker swarm init —advertise-addr IP_da_placa

## Para rever o token de inclusão para worker ou manager, digite:

> docker swarm join-token worker
docker swarm join-token manager

### Para transformar um node em manager, pode-se utilizar o token de manager ou utilizar o comando abaixo após a inclusão do mesmo como worker.

> docker swarm promote hostname
docker swarm demote hostname - para despromover um manager

### Para alterar os tokens de ingresso no cluster, utilize —rotate como abaixo:

> docker swarm join-token —rotate worker
docker swarm join-token —rotate manager