### Para saber a versão do docker:

> docker version

### Para listar os containers em execução:

> docker container ls (adicione -a para ver os containers que estão parados)

### Executando container com interatividade

> docker container run -ti ubuntu

A flag "-ti" significa que é para abrir um "terminal" e conectar nele "interatividade".

### Todo container tem um **ENTRYPOINT** que é o principal processo que ele está executando, se esse processo morrer o container será fechado!

### Para sair de um container e deixá-lo ainda em execução digite

> CTRL + p q

### Para voltar (atachar) a um container que esteja em execução digite

> docker container attach + id_do_container

### E se ao invés de conectar no container, você quiser executar um comando dentro dele? Nesse caso utilize o comando:

> docker container exec -ti id-do-container comando-para-executar

### Para executar um container em background digite:

> docker container run -d nome-da-imagem

### Removendo um container

> docker container rm id-container

um container em execução não pode ser removido, precisa para-lo antes ou utilizar a flag "-f" para forçar.

### Obtendo o status dos containers

> docker container stats id-do-container

### Obtendo o status dos processos do container

> docker container top id-container