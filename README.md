# Prometheus Start-Server

Esse repositório tem como objetivo orientar um Start-pack do Prometheus para realizar monitoramento de hospedagem e serviços docker, contudo ainda permitindo a privacidade e segurança através de uma autenticação simples para acesso dos serviços de monitoramento. Esse projeto também disponibilizará o Grafana como centralizador de métricas, tal qual um Dashboard a ser utilizado para monitorar containers do Docker.

## Tabela de Conteúdos

- [Sobre](#sobre)
- [Demonstração](#demonstração)
- [Instalação](#instalação)

## Sobre

Prometheus e Cadvisor são ferramentas para realizar coletas de Métricas eficiênte em cenários aonde se encontram diversos containers, ou quando o Hospedeiro se trata de um Linux. Contudo quando há diversos hospedeiros diferentes que necessitam de monitoramento, o cenário se complica um pouco mais, nesse caso há a necessidade de se garantir uma centralização dessas informações, dessa forma, utilizaremos o grafana para ser o centro de armazenamento e disponibilização dessas informações.

Na maioria dos casos há a necessidade de instalação desses geradores de métricas em ambientes fora da Intranet, seja um EC2 da Aws, ou uma outra máquina na núvem, ou em um outro ip externo. Pensando nisso, preparei um Nginx básico que permitirá a realização de um Proxy reverso, permitindo apenas requisições que cumpram a autenticação básica se alimentarem das informações forncedidas pelos medidores.

## Demonstração

![prometheus-basic-auth](https://github.com/MendesOliveira/prometheus-ss/assets/109288244/36062de7-fabc-4d87-b5ce-f6fc824ec4d6)

## Instalação

```
git clone https://github.com/MendesOliveira/prometheus-ss.git
``` 

Após realizar a clonagem do repositório, tenha certeza de que já tenha criado sua senha de autenticação dentro do arquivo de variáveis de ambiente .env!

```

touch .env

```

Feito isso, basta subir os containers do docker!

```

docker compose up -d --build

```

Para realizar a conexão em seu visualizador, basta selecionar *Basic Auth* como uma das configurações de autenticação do serviço.

![image](https://github.com/MendesOliveira/prometheus-ss/assets/109288244/360a25c8-f790-4ac2-b807-733ea87f7252)



