# C3 : Normalização

## Relações

1. Cliente (ID_cliente, nome, morada, telefone, idade, forma_pagamento)
2. Fornecedor (ID_fornecedor, nome, contacto_especifico, loja_armazem, endereco_eletronico)
3. Funcionario (ID_funcionario, nome, morada, telefone, area_trabalho)
4. Produto (codigo_barras, nome, preco, origem)
5. Atendimento (ID_atendimento, ID_cliente, ID_funcionario)
6. Fornecimento (ID_fornecimento, ID_fornecedor, codigo_barras)
7. Negociacao (ID_negociacao, ID_fornecedor, ID_funcionario)
8. Armazenamento (ID_armazenamento, ID_funcionario, codigo_barras)
9. Exercicio (ID_exercicio, ID_funcionario, ID_formacao)
10. Formacao (ID_formacao, descricao)

Essas relações correspondem às tabelas do banco de dados relacional. Cada relação representa uma tabela, e os atributos são representados pelas colunas dessas tabelas. As chaves primárias (identificadores únicos) são indicadas por prefixos "ID_", seguidos pelo nome da relação correspondente.

As relações "Atendimento", "Fornecimento", "Negociacao", "Armazenamento" e "Exercicio" são tabelas de associação que registram os relacionamentos entre as entidades correspondentes. Elas contêm chaves estrangeiras que se referem aos identificadores únicos das entidades envolvidas na associação.

## Normalização do Esquema Relacional
_(Apresentar o estudo da normalização das relações obtidas na secção anterior. Desnormalizar se necessário.)_

---
[< Previous](rebd02.md) | [^ Main](https://github.com/TCM22-SIBD-G03/TCM22-SIBD-G03) | [Next >](rebd04.md)
:--- | :---: | ---: 