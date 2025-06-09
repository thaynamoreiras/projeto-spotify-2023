# Projeto Spotify 2023 - Análise de Dados com BigQuery

## Introdução
Análise exploratória e validação de hipóteses com dados de músicas no Spotify, Deezer, Apple Music e Shazam. Usando SQL no Google BigQuery para tratamento, análise e criação de insights.

## Estrutura do repositório
- `sql/` - Scripts SQL organizados por etapa do projeto.
- `dashboards/` - Gráficos e dashboards exportados do Power BI.
- `README.md` - Documentação do projeto.

## Etapas do Projeto
1. Importação dos dados
2. Tratamento de valores nulos
3. Tratamento de duplicados
4. Exclusão de variáveis irrelevantes
5. Limpeza de variáveis categóricas
6. Alteração de tipos de dados
7. Criação de variáveis derivadas
8. Cálculo de quartis e categorização
9. Validação das hipóteses
10. Junção das tabelas para análise completa

## Hipóteses Validadas
- Hipótese 1: BPM mais alto tem correlação quase nula com streams.
- Hipótese 2: Popularidade entre Spotify e Deezer é moderadamente correlacionada.
- Hipótese 3: Mais playlists estão fortemente correlacionadas com mais streams.
- Hipótese 4: Artistas com mais músicas tendem a ter mais streams.
- Hipótese 5: Características técnicas da música têm correlação fraca com streams.

## Como executar
- Use o Google BigQuery para executar os scripts SQL na ordem numérica.
- Utilize o Power BI para importar as tabelas finais e criar os dashboards.
- Explore as visualizações na pasta `dashboards/`.

## Contato
Thayna Moreira - thaynamoreira845@gmail.com

