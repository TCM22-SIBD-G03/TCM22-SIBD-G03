# C4 : Esquema Relacional  <!-- omit in toc -->
_(Apresentar o esquema físico da Base de Dados. Para cada relação resultante, apresente a descrição da tabela correspondente usando o exemplo apresentado.)_

- [Relações](#relações)
  - [Tabela "Clientes"](#tabela-clientes)
    - [DESCRIÇÃO](#descrição)
    - [COLUNAS](#colunas)
    - [RESTRIÇÕES DE INTEGRIDADE](#restrições-de-integridade)
  - [Tabela Despesa](#tabela-despesa)
    - [DESCRIÇÃO](#descrição-1)
    - [COLUNAS](#colunas-1)
    - [RESTRIÇÕES DE INTEGRIDADE](#restrições-de-integridade-1)
  - [Tabela Fornecedores](#tabela-fornecedores)
    - [DESCRIÇÃO](#descrição-2)
    - [COLUNAS](#colunas-2)
    - [RESTRIÇÕES DE INTEGRIDADE](#restrições-de-integridade-2)
  - [Tabela Produtos](#tabela-produtos)
    - [DESCRIÇÃO](#descrição-3)
    - [COLUNAS](#colunas-3)
    - [RESTRIÇÕES DE INTEGRIDADE](#restrições-de-integridade-3)
  - [Tabela Funcionários](#tabela-funcionários)
    - [DESCRIÇÃO](#descrição-4)
    - [COLUNAS](#colunas-4)
    - [RESTRIÇÕES DE INTEGRIDADE](#restrições-de-integridade-4)
  - [Tabela Secção](#tabela-secção)
    - [DESCRIÇÃO](#descrição-5)
    - [COLUNAS](#colunas-5)
    - [RESTRIÇÕES DE INTEGRIDADE](#restrições-de-integridade-5)
  - [Tabela ProdutosSecção](#tabela-produtossecção)
    - [DESCRIÇÃO](#descrição-6)
    - [COLUNAS](#colunas-6)
    - [RESTRIÇÕES DE INTEGRIDADE](#restrições-de-integridade-6)
  - [Tabela Estoque](#tabela-estoque)
    - [DESCRIÇÃO](#descrição-7)
    - [COLUNAS](#colunas-7)
    - [RESTRIÇÕES DE INTEGRIDADE](#restrições-de-integridade-7)
  - [Tabela Formação](#tabela-formação)
    - [DESCRIÇÃO](#descrição-8)
    - [COLUNAS](#colunas-8)
    - [RESTRIÇÕES DE INTEGRIDADE](#restrições-de-integridade-8)

## Relações

### Tabela "Clientes"

#### DESCRIÇÃO 

A tabela "Clientes" armazena informações dos clientes cadastrados no sistema, incluindo o seu identificador único (IDCliente), nome, endereço, número de telefone, número de identificação fiscal (NIF), despesa associada e idade. Essa tabela permite o registro e a gestão dos dados dos clientes, fornecendo informações relevantes para a gestão e análise de clientes.

#### COLUNAS 

| Nome      | Descrição                      | Domínio       | por Omissão | Automático | Nulo |
| :-------- | :----------------------------- | :------------ | :---------- | :--------- | :--- |
| IDCliente | Identificador do Cliente       | BIGINT        | -           | Sim        | Não  |
| Nome      | Nome do Cliente                | VARCHAR(50)   | -           | Não        | Não  |
| Morada    | Morada do Cliente              | TEXT          | -           | Não        | Sim  |
| Telefone  | Número de telefone do Cliente  | VARCHAR(20)   | -           | Não        | Sim  |
| NIF       | Número de Identificação Fiscal | VARCHAR(20)   | -           | Não        | Sim  |
| Despesa   | Despesa do Cliente             | DECIMAL(10,2) | -           | Não        | Sim  |
| Idade     | Idade do Cliente               | INTEGER       | -           | Não        | Sim  |

#### RESTRIÇÕES DE INTEGRIDADE

- **Chave Primária**: 

| Coluna(s) |
| --------- |
| IDCliente |

- **Unicidade** (valores únicos)*:

| Nome        | Coluna(s) | Indexar |
| ----------- | --------- | ------- |
| nome_unique | Nome      | Sim     |

### Tabela Despesa

#### DESCRIÇÃO 

A tabela "Despesa" armazena informações sobre as despesas dos clientes registrados no sistema.

#### COLUNAS 

| Nome      | Descrição                | Domínio       | por Omissão | Automático | Nulo |
| :-------- | :----------------------- | :------------ | :---------- | :--------- | :--- |
| id        | Identificador da Despesa | BIGINT        | -           | Sim        | Não  |
| IDCliente | Identificador do Cliente | BIGINT        | -           | Não        | Não  |
| valor     | Valor da Despesa         | DECIMAL(10,2) | -           | Não        | Não  |
| data      | Data da Despesa          | DATE          | now()       | Não        | Não  |
| descricao | Descrição da Despesa     | TEXT          | -           | Não        | Sim  |

#### RESTRIÇÕES DE INTEGRIDADE

- **Chave Primária**: 

| Coluna(s) |
| --------- |
| id        |

- **Unicidade** (valores únicos)*:

| Nome               | Coluna(s) | Indexar |
| ------------------ | --------- | ------- |
| despesa_cliente_uk | IDCliente | Sim     |

- **Referêncial** (chaves estrangeiras)*:

| Nome               | Coluna(s) | Tabela referênciada | Coluna(s) referênciada(s) | Indexar |
| ------------------ | --------- | ------------------- | ------------------------- | ------- |
| despesa_cliente_fk | IDCliente | Clientes            | IDCliente                 | Sim     |

### Tabela Fornecedores

#### DESCRIÇÃO 

A tabela "Fornecedores" armazena informações sobre os fornecedores de produtos.

#### COLUNAS 

| Nome    | Descrição                   | Domínio     | por Omissão | Automático | Nulo |
| :------ | :-------------------------- | :---------- | :---------- | :--------- | :--- |
| id      | Identificador do Fornecedor | BIGINT      | -           | Sim        | Não  |
| nome    | Nome do Fornecedor          | VARCHAR(50) | -           | Não        | Não  |
| telefone | telefone do Fornecedor       | VARCHAR(50) | -           | Não        | Sim  |
| email   | Email do Fornecedor         | VARCHAR(50) | -           | Não        | Sim  |
| empresa | Nome da Empresa             | VARCHAR(50) | -           | Não        | Sim  |

#### RESTRIÇÕES DE INTEGRIDADE

- **Chave Primária**: 

| Coluna(s) |
| --------- |
| id        |

- **Unicidade** (valores únicos)*:

| Nome               | Coluna(s) | Indexar |
| ------------------ | --------- | ------- |
| fornecedor_nome_uk | nome      | Sim     |

- **Referêncial** (chaves estrangeiras)*:

| Nome               | Coluna(s) | Tabela referênciada | Coluna(s) referênciada(s) | Indexar |
| ------------------ | --------- | ------------------- | ------------------------- | ------- |
| fornecedor_tipo_fk | tipo      | Tabela_c            | id                        | Não     |

### Tabela Produtos

#### DESCRIÇÃO 

A tabela "Produtos" armazena informações sobre os produtos disponíveis.

#### COLUNAS 

| Nome      | Descrição                | Domínio       | por Omissão | Automático | Nulo |
| :-------- | :----------------------- | :------------ | :---------- | :--------- | :--- |
| id        | Identificador do Produto | BIGINT        | -           | Sim        | Não  |
| nome      | Nome do Produto          | VARCHAR(50)   | -           | Não        | Não  |
| preco     | Preço do Produto         | DECIMAL(10,2) | -           | Não        | Não  |
| estoque   | Quantidade em Estoque    | INTEGER       | -           | Não        | Não  |
| descricao | Descrição do Produto     | TEXT          | -           | Não        | Sim  |

#### RESTRIÇÕES DE INTEGRIDADE

- **Chave Primária**: 

| Coluna(s) |
| --------- |
| id        |

- **Unicidade** (valores únicos)*:

| Nome            | Coluna(s) | Indexar |
| --------------- | --------- | ------- |
| produto_nome_uk | nome      | Sim     |

- **Referêncial** (chaves estrangeiras)*:

| Nome            | Coluna(s) | Tabela referênciada | Coluna(s) referênciada(s) | Indexar |
| --------------- | --------- | ------------------- | ------------------------- | ------- |
| produto_tipo_fk | tipo      | Tabela_c            | id                        | Não     |

### Tabela Funcionários

#### DESCRIÇÃO 

A tabela "Funcionários" armazena informações sobre os funcionários da empresa.

#### COLUNAS 

| Nome      | Descrição                    | Domínio       | por Omissão | Automático | Nulo |
| :-------- | :--------------------------- | :------------ | :---------- | :--------- | :--- |
| id        | Identificador do Funcionário | BIGINT        | -           | Sim        | Não  |
| nome      | Nome do Funcionário          | VARCHAR(50)   | -           | Não        | Não  |
| data_nasc | Data de Nascimento           | DATE          | -           | Não        | Não  |
| cargo     | Cargo do Funcionário         | VARCHAR(50)   | -           | Não        | Sim  |
| salario   | Salário do Funcionário       | DECIMAL(10,2) | -           | Não        | Não  |

#### RESTRIÇÕES DE INTEGRIDADE

- **Chave Primária**: 

| Coluna(s) |
| --------- |
| id        |

- **Unicidade** (valores únicos)*:

| Nome                | Coluna(s) | Indexar |
| ------------------- | --------- | ------- |
| funcionario_nome_uk | nome      | Sim     |

- **Referêncial** (chaves estrangeiras)*:

| Nome                | Coluna(s) | Tabela referênciada | Coluna(s) referênciada(s) | Indexar |
| ------------------- | --------- | ------------------- | ------------------------- | ------- |
| funcionario_tipo_fk | tipo      | Tabela_c            | id                        | Não     |

### Tabela Secção

#### DESCRIÇÃO 

A tabela "Secção" armazena informações sobre as seções ou departamentos da empresa.

#### COLUNAS 

| Nome      | Descrição              | Domínio     | por Omissão | Automático | Nulo |
| :-------- | :--------------------- | :---------- | :---------- | :--------- | :--- |
| id        | Identificador da Seção | BIGINT      | -           | Sim        | Não  |
| nome      | Nome da Seção          | VARCHAR(50) | -           | Não        | Não  |
| descricao | Descrição da Seção     | TEXT        | -           | Não        | Sim  |

#### RESTRIÇÕES DE INTEGRIDADE

- **Chave Primária**: 

| Coluna(s) |
| --------- |
| id        |

- **Unicidade** (valores únicos)*:

| Nome              | Coluna(s) | Indexar |
| ----------------- | --------- | ------- |
| secao_nome_unique | nome      | Sim     |

- **Referêncial** (chaves estrangeiras)*:

| Nome          | Coluna(s) | Tabela referênciada | Coluna(s) referênciada(s) | Indexar |
| ------------- | --------- | ------------------- | ------------------------- | ------- |
| secao_tipo_fk | tipo      | Tabela_c            | id                        | Não     |


### Tabela Estoque

#### DESCRIÇÃO 

A tabela "Estoque" armazena informações sobre o estoque de produtos da empresa.

#### COLUNAS 

| Nome       | Descrição                      | Domínio | por Omissão | Automático | Nulo |
| :--------- | :----------------------------- | :------ | :---------- | :--------- | :--- |
| id         | Identificador do estoque       | BIGINT  | -           | Sim        | Não  |
| produto_id | ID do produto                  | BIGINT  | -           | Não        | Não  |
| quantidade | Quantidade em estoque          | INT     | -           | Não        | Não  |
| data_atual | Data de atualização do estoque | DATE    | now()       | Não        | Não  |
| descricao  | Descrição do estoque           | TEXT    | -           | Não        | Sim  |

#### RESTRIÇÕES DE INTEGRIDADE

- **Chave Primária**: 

| Coluna(s) |
| --------- |
| id        |

- **Unicidade** (valores únicos)*:

| Nome               | Coluna(s)  | Indexar |
| ------------------ | ---------- | ------- |
| estoque_produto_uk | produto_id | Sim     |

- **Referêncial** (chaves estrangeiras)*:

| Nome               | Coluna(s)  | Tabela referênciada | Coluna(s) referênciada(s) | Indexar |
| ------------------ | ---------- | ------------------- | ------------------------- | ------- |
| estoque_produto_fk | produto_id | Produtos            | id                        | Não     |

### Tabela Formação

#### DESCRIÇÃO 

A tabela "Formação" armazena informações sobre as formações realizadas pela empresa.

#### COLUNAS 

| Nome       | Descrição                       | Domínio     | por Omissão | Automático | Nulo |
| :--------- | :------------------------------ | :---------- | :---------- | :--------- | :--- |
| id         | Identificador da formação       | BIGINT      | -           | Sim        | Não  |
| nome       | Nome da formação                | VARCHAR(50) | -           | Não        | Não  |
| descricao  | Descrição da formação           | TEXT        | -           | Não        | Sim  |
| data       | Data da formação                | DATE        | now()       | Não        | Não  |
| duracao    | Duração da formação (em horas)   | INT         | -           | Não        | Não  |
| instrutor  | Nome do instrutor da formação   | VARCHAR(50) | -           | Não        | Sim  |

#### RESTRIÇÕES DE INTEGRIDADE

- **Chave Primária**: 

| Coluna(s) |
| --------- |
| id        |

- **Unicidade** (valores únicos)*:

| Nome           | Coluna(s) | Indexar |
| -------------- | --------- | ------- |
| formacao_nome_uk | nome      | Sim     |

- **Referêncial** (chaves estrangeiras)*:

| Nome           | Coluna(s) | Tabela referênciada | Coluna(s) referênciada(s) | Indexar |
| -------------- | --------- | ------------------- | ------------------------- | ------- |
| formacao_inst_fk | instrutor | Funcionários        | nome                      | Não     |

---
| [< Previous](rebd03.md) | [^ Main](https://github.com/TCM22-SIBD-G03/TCM22-SIBD-G03) | [Next >](rebd05.md) |
| :---------------------- | :--------------------------------------------------------: | ------------------: |
