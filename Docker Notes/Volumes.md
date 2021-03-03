## Tipo BIND

Quando voce tem um diretório no host e quer montá-lo dentro do container, esse é o tipo bind.

> docker container run -ti —mount type=bind,src=caminho-diretorio,dst=local-montagem,ro centos

O "ro" no final do comando é para definir que o volume é Read Only.

## Tipo VOLUME

> docker volume ls | docker volume create nome-volume | docker volume rm -f nome-volume

Para usar um volume do tipo VOLUME:

> docker container run -ti —mount type=volume,src=nome-vol,dst=local-mount ubuntu

## PRUNE

> docker "volume/container/image" prune - Apaga todo "volume, container ou imagem que não esteja sendo utilizado por pelo nenhum container.