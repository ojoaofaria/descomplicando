Secrets são arquivos que voce deseja enviar para um container de maneira segura, informações sensiveis como senhas.

### Como criar uma secret?

voce pode fazer de duas formas:

> echo "IMAGINE QUE SEJA ALGO IMPORTANTE" | docker secret create nome-da-secret -

- O "-" bo final do comando é para receber o que vem antes do pipe.

Voce pode criar um arquivo de texto e trasformá-lo em uma secret:

> docker secret create nome-secret aquivo.txt

### Onde ficam as secrets dentro dos containers?

Elas ficam dentro de "/run"

### Como utilizar uma secret?

Basta adicionar "—secret nome-da-secret" na linha de criação do service

> docker service create —name XxXx -p 8080:80 —secret nome-secret imagem

### Podemos adicionar ou remover sercrets após a criação do services?

Sim, com a utilização do comando UPDATE

> docker service update —secret-add nome-secret nome-service

docker service update —secret-rm nome-secret nome-service

### comandos da aula

> echo 'minha secret' | docker secret create
docker secret create minha_secret minha_secret.txt
docker secret inspect minha_secret
docker secret ls
docker secret rm minha_secret
docker service create --name app --detach=false --secret db_pass minha_app:1.0
docker service create --detach=false --name app --secret source=db_pass,target=password,uid=2000,gid=3000,mode=0400 minha_app:1.0
ls -lhart /run/secrets/
docker service update --secret-rm db_pass --detach=false --secret-add source=db_pass_1,target=password app