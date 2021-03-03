### docker services —help

> docker service create —name giropops —replicas 3 -p 8080:80 nginx

### Escalando um serviço

> docker service scale giropops=10

### Logs

> docker service log -f giropops

### Volumes

> q

### Mais opções

> docker service create --name giropops --replicas 3 -p 8080:80 --mount type=volume,src=renova,dst=/usr/share/nginx --hostname sua_mae --limit-cpu 0.25 --limit-memory 64M --env joao=foda nginx