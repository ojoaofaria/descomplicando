## Rodando terraform no docker
docker run -it -v $PWD:/app -w /app --entrypoint "" hashicorp/terraform:light sh

## setando credenciais da AWS como variável de ambiente
export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=

## Iniciando o terraform
### No diretório que contenha os arquivos tf, execute os comando conforme necessário.
```
terraform init
terraform plan -out plano
terraform apply plano
terraform destroy
terraform console
```