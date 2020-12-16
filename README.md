# Datadog-APM

Exemplo de docker-compose para monitoração de APM  com Datadog  com uma simples aplicação em python.

## Requisitos

- Docker instalado
- Uma conta no DataDog

## Como configurar

No `docker-compose.yml` será necessário alterar as variáveis para enviar os dados de APM para o DataDog. A variável a ser alterada é:

- `DD_API_KEY`: Chave de API associada à conta do DataDog 

```yaml
# Exemplo
version: '3'
services:
    web:
       ...
    datadog-agent:
       ...
       environment:
         - DD_API_KEY=$DD_API_KEY
         - DD_APM_ENABLE=true
         - DD_APM_NON_LOCAL_TRAFFIC=true
```

## Como executar

```bash
docker-compose up docker-compose.yaml
```