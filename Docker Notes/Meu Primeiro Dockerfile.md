> FROM debian
> LABEL app="Giropops"
> ENV JOAO="SPFC"
> RUN apt-get update && apt-get install -y stress && apt-get
> clean
> CMD stress —cpu 1 —vm-bytes 64M —vm 1

### Após o Dockerfile construido execute com:

> docker image build -t nome-imagem:versão .

use o "-t" para indicar um nome para a imagem, mantenha o padrão nome:versão, e o "." indica que o Dockerfile está nesse diretório.