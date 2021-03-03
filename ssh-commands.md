### Gere a chave ssh dentro de ~/.ssh

> ssh keygen

### Copie a chave publica para a maquina de destino.

> ssh-copy-id -i chave.pub user@IP

### SSH agent

> ssh-agent bash
> ssh-add id_rsa.pub