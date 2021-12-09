# IMAGEM PARA CRIAR CONTAINERS PARA AMBIENTE DE DESENVOLVIMENTO COM POSTGRES 11.0

Neste repositório, existe um arquivo Dockerfile para montar uma imagem Docker para rodar containers com instâncias de banco de dados Postgres 11 para desenvolvimento.

## Passos para montar a sua imagem:

**1) Para criar a nossa imagem vamos executar o seguinte comando:**

```docker
docker build -t <nome-repositorio>/postgres11:<versao> .
```
**2) Criar um volume docker para gerenciar os dados da nossa base de dados usando o seguinte comando:**

```docker
docker volume create postgres_volume
```
**3) A documentação oficial da imagem do Postgres nos indica a necessidade de informar duas variáveis de ambiente. São elas:**

*POSTGRES_USER
*POSTGRES_PASSWORD

**4) Devemos realizar um port binding para porta 5432 para rodar a nossa instância postgres em um container**

**5) Para subir a imagem para o seu repositório no Docker Hub. Vamos utilizar o seguinte comando:**

```docker
docker login
docker push <nome-repositorio>/postgres11:<versao> 
```
Como uma boa prática, uma imagem latest a partir da versão atual da nossa imagem dever ser inclusa também no Docker Hub. Para essa ação utilizaremos o seguinte comando:

```docker
docker tag <nome-repositorio>/postgres11:<versao> <nome-repositorio>/postgres11:latest
docker push <nome-repositorio>/postgres11:latest
```
**6) Para criarmos containers a partir da nossa imagem versionada. Utilizaremos o seguinte comando:**

```docker
docker container run -d -p 5432:5432 --name postgres11-container <nome-repositorio>/postgres11:<versao>
```
Para maiores informações de como criar imagens postgres e executar containers a partir delas. Segue abaixo o link da documentação oficial.

[Documentação oficial imagem Postgres](https://hub.docker.com/_/postgres)

