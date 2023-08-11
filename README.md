# Prometheus Start-Server

Esse repositório tem como objetivo orientar um Start-pack do Prometheus para realizar monitoramento de hospedagem e serviços docker, contudo ainda permitindo a privacidade e segurança através de uma autenticação simples para acesso dos serviços de monitoramento. Esse projeto também disponibilizará o Grafana como centralizador de métricas, tal qual um Dashboard a ser utilizado para monitorar containers do Docker.

## Tabela de Conteúdos

- [Sobre](#Sobre)
- [Funcionalidades](#funcionalidades)
- [Demonstração](#demonstração)
- [Instalação](#instalação)

## Sobre

Prometheus e Cadvisor são ferramentas para realizar coletas de Métricas eficiênte em cenários aonde se encontram diversos containers, ou quando o Hospedeiro se trata de um Linux. Contudo quando há diversos hospedeiros diferentes que necessitam de monitoramento, o cenário se complica um pouco mais, nesse caso há a necessidade de se garantir uma centralização dessas informações, dessa forma, utilizaremos o grafana para ser o centro de armazenamento e disponibilização dessas informações.

Na maioria dos casos há a necessidade de instalação desses geradores de métricas em ambientes fora da Intranet, seja um EC2 da Aws, ou uma outra máquina na núvem, ou em um outro ip externo. Pensando nisso, preparei um Nginx básico que permitirá a realização de um Proxy reverso, permitindo apenas requisições que cumpram a autenticação básica se alimentarem das informações forncedidas pelos medidores.

## Demonstração

## Instalação
