Registry são repositórios locais, pode se utilizar um registry no lugar do dockerhub.

## Usando o Dockerhub

### Primeiro é preciso logar.

> docker login

A imagem para ser enviada precisa seguir o padrão de nomenclatura, usuario/nome-imagem:versão

> docker image tag id-imagem meu-usuario/imagem:versao

Após isso, faça o upload

> docker image push meu-usuario/imagem:versao

### Usando um Registry

Um registry é um container disponivel na rede interna, que faz a centralização das imagens. Baixe e execute ele da seguinte forma (use sempre a versão 2 do registry).

> docker container run -d -p 5000:5000 —restart=always —name resgistry registry:2

### Fazendo o upload da imagem para o registry local.

Primeiro renomeie a imagem para o seguinte formato:

> docker image tag id-imagem registry-local:5000/imagem:versao

Depois faça o PUSH

> docker image push registry-local:5000/imagem:versao