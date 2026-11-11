# Projeto UA4 - IA e Bancos de Dados

## Descrição

Este projeto foi desenvolvido como atividade prática da disciplina de Inteligência Artificial e Banco de Dados.

O objetivo é apresentar uma solução integrada utilizando PostgreSQL, MongoDB e Qdrant para um sistema de recomendação inteligente, abordando aspectos de desempenho, segurança, LGPD e busca semântica.

---

## Cenário

A startup analisada utiliza três tecnologias principais:

* PostgreSQL para armazenamento transacional.
* MongoDB para avaliações de clientes.
* Qdrant para armazenamento vetorial e consultas semânticas.

Foram identificados três problemas principais:

1. Lentidão em consultas SQL.
2. Ausência de backup e excesso de permissões no MongoDB.
3. Falhas de integração no banco vetorial Qdrant.

---

## Objetivos

* Melhorar o desempenho das consultas SQL.
* Implementar boas práticas de segurança e backup.
* Garantir conformidade com a LGPD.
* Padronizar a integração entre os três bancos.
* Demonstrar uma busca semântica utilizando embeddings.

---

## Estrutura do Projeto

### sql/

Contém os scripts responsáveis pela criação da estrutura relacional, carga de dados e análise de desempenho.

Arquivos:

* schema.sql
* test_data.sql
* query_before.sql
* query_after.sql

---

### mongo/

Contém os scripts relacionados ao MongoDB.

Arquivos:

* seed_reviews.js
* indexes.js
* users_roles.js
* backup.sh

---

### qdrant/

Contém os scripts utilizados para criação da coleção vetorial e execução da busca semântica.

Arquivos:

* qdrant_setup.py
* qdrant_search.py

---

### evidencias/

Contém as capturas de tela utilizadas para comprovação das atividades realizadas.

Arquivos:

* explain_before.png
* explain_after.png
* mongodb_backup.png
* qdrant_search.png

---

## Tecnologias Utilizadas

* PostgreSQL
* MongoDB
* Qdrant
* Python
* Sentence Transformers
* Inteligência Artificial Generativa

---

## Segurança e LGPD

As seguintes medidas foram consideradas:

* Controle de acesso baseado em papéis.
* Princípio do menor privilégio.
* Backup periódico.
* Possibilidade de utilização de TLS/SSL.
* Anonimização de dados para ambientes de teste.
* Auditoria e rastreabilidade de acessos.

---

## Fluxo da Solução

1. Dados transacionais armazenados no PostgreSQL.
2. Avaliações armazenadas no MongoDB.
3. Geração de embeddings utilizando Sentence Transformers.
4. Armazenamento dos vetores no Qdrant.
5. Busca semântica para apoio ao sistema de recomendação.

---

## Resultados Obtidos

* Redução estimada do tempo de execução da consulta SQL.
* Implementação de estratégia de backup no MongoDB.
* Busca semântica funcionando com base vetorial.
* Integração padronizada entre os três bancos de dados.

---

## Conclusão

A solução proposta demonstra como diferentes modelos de banco de dados podem atuar de forma complementar em sistemas inteligentes modernos, combinando desempenho, segurança e recursos avançados de Inteligência Artificial.
