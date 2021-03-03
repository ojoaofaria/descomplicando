### Start/Stop/Restart/Pause/Unpause em container

> docker container "stop/start/restart/pause/unpause" id-do-conatiner

### Para inspecionar todos os detalhes de um comando

> docker container inspect id-do-conatainer

### Logs (use a flag "-f" para ter acesso ao vivo)

> docker container logs -f id-do-container

# Configurando CPU e Memória

> apt-get install -y stress

> stress --cpu 1 --vm-bytes 128M --vm 1

### Definindo máximo de memória pra um container

> docker container run -d -m 128M nginx

### Definindo máximo de CPU para um container

> docker container run -d —cpus 0.5 nginx

### Alterar as propriedades de memória ou cpu

> docker container update —cpus novo-valor -m novo-valor id-container