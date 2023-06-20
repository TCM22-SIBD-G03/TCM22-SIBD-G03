---
author:
- João Silva – A040670
- Diogo Martins – A040765
- Vitor Marques - A041449
- Marley Lizardo - A037773
- Luena Pereira - A041346
title:
- Sistemas de Informação e Bases de Dados
subtitle:
- Apresentação
date:
- 2023/06/20
colorlinks:
- linkcolor
institute: "UMAIA"
theme:
- arguelles
aspectratio: 169
fontsize: 5
---

# C1 : Introdução

## Descrição do Trabalho

O trabalho consiste na especificação e desenvolvimento de um sistema para a organização da nossa mercearia que é constituída pelas entidades (Cliente, Fornecedores, Funcionários, Produtos) que são:

O Cliente tem uma forma de identificação, como vários clientes não podem ter o mesmo número de identificação, o Cartão de identificação vem com o número de cliente, morada e o número de telefone e a suposta foto do cliente, idade. Temos também o histórico de compras dos clientes para fins de *marketing*.

# Descrição do Trabalho

Temos vários fornecedores, como:

- Fornecedor de Frutas e Legumes é a empresa Hortifruti que tem um contacto específico, um armazém e o endereço eletrónico. Esta empresa responsabiliza toda transição até chegar ao nosso estabelecimento e cada produto tem um preço específico e tamanho;
- Fornecedor de Carne e Peixe é a empresa Sabor do Mar que é responsável pela venda e transporte dessas possíveis mercadorias mensais que tem um contacto específico, loja específica e o endereço eletrónico;
- Fornecedor de Produtos Lácteos e Queijos que é a empresa Leite Saudável que é responsável pela venda e transporte dessas possíveis mercadorias mensais que tem um contacto específico, loja específica e o endereço eletrónico;


# Descrição do Trabalho

Relativamente aos funcionários, eles têm um nome, morada, número, telefone e o seu turno de trabalho, além disto têm uma secção de trabalho definida.


# Descrição do Trabalho

Temos 20 clientes que são:

1. Ana Silva, o seu número de cliente é 01, mora no Porto, número de telefone é 914261225 e tem 30 anos;
2. João Santos, o seu número de cliente é 02, mora em Matosinhos, número de telefone é 981595924 e tem 28 anos;
3. Maria Andrade, o seu número de cliente é 03, mora no Porto, número de telefone é 958624759 e tem 45 anos;
4. Pedro Sousa, o seu número de cliente é 04, mora em Vila Nova de Gaia, número de telefone é 963568987 e tem 23 anos;
5. Sofia Oliveira, o seu número de cliente é 05, mora em Gondomar, número de telefone é 968475123 e tem 29 anos;
6. José Silva, o seu número de cliente é 06, mora em Santo Tirso, número de telefone é 987654213 e tem 50 anos;
7. Margarida Vieira, o seu número de cliente é 07, mora em Valongo, número de telefone é 9748546231 e tem 36 anos;

# Descrição do Trabalho

8. Luís Costa, o seu número de cliente é 08, mora no Porto, número de telefone é 963528741 e tem 42 anos;
9.  Joana Ferreira, o seu número de cliente é 09, mora em Vila Nova de Gaia, número de telefone é 951623478 e tem 26 anos;
10. Rui Martins, o seu número de cliente é 10, mora no Porto, número de telefone é 984751236 e tem 32 anos;
11. Ângela Alves, o seu número de cliente é 11, mora em Santo Tirso, número de telefone é 916548732 e tem 24 anos;
12. Bruno Santos, o seu número de cliente é 11, mora em Matosinhos, número de telefone é 935621478 e tem 27 anos.
13. Juliana Silva, número de cliente 93748, morada em (o) Rua das Flores, n.º 10, Lisboa, telefone 910234567, idade 35 anos.
14. Marcos Oliveira, número de cliente 84190, morada em (o) Rua das Oliveiras, n.º 5, Porto, telefone 926345678, idade 42 anos.

# Descrição do Trabalho

15. Raquel Santos, número de cliente 75123, morada em (o) Avenida Central, n.º 25, Braga, telefone 936123456, idade 28 anos.
16. Bruno Santos, número de cliente 62047, morada em (o) Rua da Liberdade, n.º 15, Coimbra, telefone 966987654, idade 37 anos.
17. Carla Martins, número de cliente 41782, morada em (o) Rua dos Cedros, n.º 8, Faro, telefone 917654321, idade 29 anos.
18. Sofia Almeida, número de cliente 32890, morada em (o) Rua das Palmeiras, n.º 12, Aveiro, telefone 925765432, idade 45 anos.
19. Pedro Gonçalves, número de cliente 21657, morada em (o) Rua do Mar, n.º 20, Cascais, telefone 913456789, idade 50 anos.
20. Ana Santos, número de cliente 12983, morada em (o) Avenida dos Pinheiros, n.º 6, Vila Real, telefone 935678901, idade 31 anos.

# Descrição do Trabalho

Com base nas informações acima, podemos definir o modelo de dados para o sistema de informação da mercearia. O modelo de dados consiste em entidades (Cliente, Fornecedor e Funcionário) e os seus atributos relevantes. Cada entidade tem um identificador único (*ID*) para garantir a integridade dos dados.

A entidade Cliente tem os seguintes atributos: *ID*, nome, morada, número de telefone, idade e forma de pagamento. A forma de pagamento pode ser semanal ou mensal e pode ser feita através de multibanco, dinheiro em mão ou *Mb Way*.

A entidade Fornecedor tem os seguintes atributos: *ID*, nome, contacto específico, loja/ armazém específico e endereço eletrónico.

A entidade Funcionário tem os seguintes atributos: *ID*, nome, morada e número de telefone e a sua respetiva área de trabalho: Caixa, Repositor e Atendente.
Para cada funcionário, adicionamos também os seus detalhes de formação ou experiência, dependendo do cargo.


# Descrição do Trabalho

Assim, o modelo de dados fica definido da seguinte forma:

Entidade Cliente:

- *ID* (identificador único)
- Nome
- Morada
- Número de telefone
- Idade
- Forma de pagamento
- NIF


# Descrição do Trabalho

Entidade Fornecedor:

- *ID* (identificador único)
- Nome
- Telefone
- Empresa
- Email

# Descrição do Trabalho

Entidade Funcionário:

- *ID* (identificador único)
- Nome
- Morada
- Número de telefone
- Área de trabalho (Caixa, Repositor, Atendente)
- Formação/Experiência (se aplicável)

# Descrição do Trabalho

Entidade Produto:

- Nome
- Preço
- Origem
- *Código de Barras* (identificador único)


# Descrição do Trabalho

Entidade Secção

- ID
- Nome
- Descrição

# Modelação de Problemas

Um dos problemas que é possível ocorrer durante o processo de criação são

1. Problemas com fornecedores: O sistema precisa ter uma tabela de fornecedores, que contém informações como nome, endereço e informações de contacto. No entanto, se um fornecedor for excluído do sistema, todos os produtos associados a esse fornecedor também serão excluídos. Isso pode levar a problemas se um fornecedor fornecer produtos exclusivos que não são fornecidos por outros fornecedores. Além disso, se houver um problema com um produto fornecido por um fornecedor, isso pode afetar todos os clientes que compraram esse produto.
2. Número de identificação do cliente: Cada cliente deve ter um número de identificação exclusivo. No entanto, pode haver casos em que o sistema atribua o mesmo número de identificação a dois clientes diferentes. Isso pode levar a problemas se os registos dos clientes forem misturados ou se a identificação do cliente for usada para acessar informações pessoais.

# Modelação de Problemas

3. Horários de Turnos dos Funcionários: Cada funcionário tem um horário de trabalho específico, mas às vezes pode haver sobreposições de turno, o que pode levar a confusões e atrasos. Com um sistema adequado de agendamento de turnos, a empresa poderá evitar conflitos de horário e garantir que cada funcionário trabalhe nos horários mais adequados para eles. Isso aumentará a eficiência da empresa e ajudará a garantir que cada funcionário tenha um ambiente de trabalho seguro e confortável.
4. Cada Funcionário pode trabalhar uma secção.

# C2 : Especificação de Requisitos

A nossa Mercearia vai utilizar a base de dados para o número de funcionário que trabalha para nos e a sua respetiva função que desempenha. A base de dados vai ser utilizado pelos fornecedores da Mercearia para gerir a quantidade de produtos fornecidos. A base da dados vai poder identificar o NIF de cada cliente. 


# C3 : Esquema conceptual

## Modelo E/A

![Modelo E/A](Diagram1.png){width=400px}


# Entidades

1. Cliente
2. Fornecedor
3. Produto
4. Funcionário
5. Formação
6. Secção

# Associações

1. atende
2. fornece
3. negoceia
4. armazena
5. exerce
6. trabalho

# Regras de negócio adicionais (Restrições)

## 1. Cliente:

- Um cliente deve ter um número de identificação único.
- O número de telefone de um cliente deve ser válido e único.
- O cliente só pode ter uma forma de pagamento definida.
- O nome do cliente não pode ser vazio.


## 2. Fornecedor:

- Um fornecedor deve ter um número de identificação único.
- O contacto específico do fornecedor deve ser válido e único.
- O endereço eletrónico do fornecedor deve ser válido e único.
- O nome do fornecedor não pode ser vazio.

# 3. Produto:

- Cada produto deve ter um código de barras único.
- O nome do produto não pode ser vazio.
- O preço do produto deve ser um valor válido e positivo.
- O produto deve ter uma origem definida.

## 4. Funcionário:

- Cada funcionário deve ter um número de identificação único.
- O número de telefone do funcionário deve ser válido e único.
- O nome do funcionário não pode ser vazio.
- A área de trabalho do funcionário deve ser válida (Caixa, Repositor, Atendente).

## 5. Formação:

- A formação de um funcionário deve estar associada a um funcionário existente.
- A experiência de um funcionário deve estar associada a um funcionário existente.

# 6. Secção

- Cada Funcionário deve Trabalha em uma seccao.

# Regras de associação adicionais:

## 1. Atende:

- Um cliente pode ser atendido por vários funcionários.
- Um funcionário pode atender vários clientes.
- A associação "atende" representa o atendimento de um cliente por um funcionário.

## 2. Fornece:

- Um fornecedor pode fornecer vários produtos.
- Um produto pode ser fornecido por vários fornecedores.
- A associação "fornece" representa o fornecimento de produtos por um fornecedor.

# 3. Negoceia:

- Um funcionário pode negociar com vários fornecedores.
- Um fornecedor pode ser negociado por vários funcionários.
- A associação "negoceia" representa a negociação entre um funcionário e um fornecedor.

## 4. Armazena:

- Um funcionário pode ser responsável por armazenar vários produtos.
- Um produto pode ser armazenado por vários funcionários.
- A associação "armazena" representa a responsabilidade de um funcionário em armazenar produtos.

## 5. Exerce:

- Um funcionário pode exercer várias formações.
- Uma formação pode ser exercida por vários funcionários.
- A associação "exerce" representa a formação exercida por um funcionário.

# 6. Trabalha:

- Um funcionário pode trabalhar em uma seccão.
- A associação "trabalha" representa a seccao onde cada trabalhador trabalha.  

Essas regras de negócio adicionais e restrições ajudam a garantir a integridade e consistência dos dados no sistema de informação da mercearia, além de definir os relacionamentos e
limitações entre as entidades e associações. É importante considerar essas regras ao projetar e desenvolver o sistema.

# C3 : Normalização

## Relações

1. Tabela "Clientes":
   - CLIENTES (IDCliente, Nome, Morada, Telefone, NIF, Despesa, Idade)

2. Tabela "Fornecedores":
   - FORNECEDORES (IDFornecedor, Nome, Contacto, Email, Empresa)

3. Tabela "Produtos":
   - PRODUTO (IDProduto, Nome, Preco, Origem)

4. Tabela "Funcionários":
   - FUNCIONARIOS (IDFuncionario, Nome, Morada, Telefone, Turno)

5. Tabela "Secção":
   - SECCAO (IDSeccao, Nome, Produto, Data, Quantidade)

6. Tabela "Formação":
   - FORMACAO (IDFormacao, Nome, Data, Local)

# Normalização do Esquema Relacional

## 1NF

1. Tabela "Clientes":
   - CLIENTES (IDCliente, Nome, Morada, Telefone, NIF, Despesa, Idade)

2. Tabela "Fornecedores":
   - FORNECEDORES (IDFornecedor, Nome, Contacto, Email, Empresa)

3. Tabela "Produtos":
   - PRODUTO (IDProduto, Nome, Preco, Origem)

4. Tabela "Funcionários":
   - FUNCIONARIOS (IDFuncionario, Nome, Morada, Telefone, Turno)

5. Tabela "Secção":
   - SECCAO (IDSeccao, Nome)

6. Tabela "Formação":
   - FORMACAO (IDFormacao, Nome, Data, Local)

# 2NF

1. Tabela "Clientes":
   - CLIENTES (IDCliente, Nome, Morada, Telefone, NIF, Idade)
   - DESPESA_CLIENTES (IDCliente, Despesa)

2. Tabela "Fornecedores":
   - FORNECEDORES (IDFornecedor, Nome, Contacto, Email, Empresa)

3. Tabela "Produtos":
   - PRODUTO (IDProduto, Nome, Preco, Origem)

4. Tabela "Funcionários":
   - FUNCIONARIOS (IDFuncionario, Nome, Morada, Telefone, Turno)

5. Tabela "Secção":
   - SECCAO (IDSeccao, Nome)

6. Tabela "Formação":
   - FORMACAO (IDFormacao, Nome, Data, Local)

# 3NF

1. Tabela "Clientes":
   - CLIENTES (IDCliente, Nome, Morada, Telefone, NIF, Idade)

2. Tabela "Despesa":
   - DESPESA_CLIENTES (IDCliente, Despesa)

3. Tabela "Fornecedores":
   - FORNECEDORES (IDFornecedor, Nome, Contacto, Email, Empresa)

4. Tabela "Produtos":
   - PRODUTO (IDProduto, Nome, Preco, Origem)

5. Tabela "Funcionários":
   - FUNCIONARIOS (IDFuncionario, Nome, Morada, Telefone, Turno)

6. Tabela "Secção":
   - SECCAO (IDSeccao, Nome)

7. Tabela "Estoque":
   - ESTOQUE (IDProduto, IDSeccao, Data, Quantidade)

8. Tabela "Formação":
   - FORMACAO (IDFormacao, Nome, Data, Local)

# BCNF

1. Tabela "Clientes":
   - CLIENTES (IDCliente, Nome, Morada, Telefone, NIF, Idade)

2. Tabela "Despesa":
   - DESPESA_CLIENTES (IDCliente, Despesa)

3. Tabela "Fornecedores":
   - FORNECEDORES (IDFornecedor, Nome, Contacto, Email, Empresa)

4. Tabela "Produtos":
   - PRODUTO (IDProduto, Nome, Preco, Origem)

5. Tabela "Funcionários":
   - FUNCIONARIOS (IDFuncionario, Nome, Morada, Telefone, Turno)

6. Tabela "Secção":
   - SECCAO (IDSeccao, Nome)

7. Tabela "Estoque":
   - ESTOQUE (IDProduto, IDSeccao, Data, Quantidade)

8. Tabela "Formação":
   - FORMACAO (IDFormacao, Nome, Data, Local)


# Esquema Relacional

# Relações

## Tabela "Clientes"

> A tabela "Clientes" armazena informações dos clientes cadastrados no sistema, incluindo o seu identificador único (IDCliente), nome, endereço, número de telefone, número de identificação fiscal (NIF), despesa associada e idade. Essa tabela permite o registro e a gestão dos dados dos clientes, fornecendo informações relevantes para a gestão e análise de clientes.

# COLUNAS

| Nome      | Descrição                      | Domínio       | por Omissão | Automático | Nulo |
| :-------- | :----------------------------- | :------------ | :---------- | :--------- | :--- |
| IDCliente | Identificador do Cliente       | BIGINT        | -           | Sim        | Não  |
| Nome      | Nome do Cliente                | VARCHAR(50)   | -           | Não        | Não  |
| Morada    | Morada do Cliente              | TEXT          | -           | Não        | Sim  |
| Telefone  | Número de telefone do Cliente  | VARCHAR(20)   | -           | Não        | Sim  |
| NIF       | Número de Identificação Fiscal | VARCHAR(20)   | -           | Não        | Sim  |
| Despesa   | Despesa do Cliente             | DECIMAL(10,2) | -           | Não        | Sim  |
| Idade     | Idade do Cliente               | INTEGER       | -           | Não        | Sim  |

# RESTRIÇÕES DE INTEGRIDADE

# Chave Primária:

## RESTRIÇÕES DE INTEGRIDADE

| Coluna(s) |
| --------- |
| IDCliente |

# Unicidade (valores únicos):

## RESTRIÇÕES DE INTEGRIDADE

| Nome        | Coluna(s) | Indexar |
| ----------- | --------- | ------- |
| nome_unique | Nome      | Sim     |

# Tabela Despesa

> A tabela "Despesa" armazena informações sobre as despesas dos clientes registrados no sistema.

# COLUNAS

| Nome      | Descrição                | Domínio       | por Omissão | Automático | Nulo |
| :-------- | :----------------------- | :------------ | :---------- | :--------- | :--- |
| id        | Identificador da Despesa | BIGINT        | -           | Sim        | Não  |
| IDCliente | Identificador do Cliente | BIGINT        | -           | Não        | Não  |
| valor     | Valor da Despesa         | DECIMAL(10,2) | -           | Não        | Não  |
| data      | Data da Despesa          | DATE          | now()       | Não        | Não  |
| descricao | Descrição da Despesa     | TEXT          | -           | Não        | Sim  |

# RESTRIÇÕES DE INTEGRIDADE

# Chave Primária:

## RESTRIÇÕES DE INTEGRIDADE

| Coluna(s) |
| --------- |
| id        |

# Unicidade (valores únicos):

## RESTRIÇÕES DE INTEGRIDADE

| Nome               | Coluna(s) | Indexar |
| ------------------ | --------- | ------- |
| despesa_cliente_uk | IDCliente | Sim     |

# Referêncial (chaves estrangeiras):

## RESTRIÇÕES DE INTEGRIDADE

| Nome               | Coluna(s) | Tabela referênciada | Coluna(s) referênciada(s) | Indexar |
| ------------------ | --------- | ------------------- | ------------------------- | ------- |
| despesa_cliente_fk | IDCliente | Clientes            | IDCliente                 | Sim     |

# Tabela Fornecedores

> A tabela "Fornecedores" armazena informações sobre os fornecedores de produtos.

# COLUNAS

| Nome     | Descrição                   | Domínio     | por Omissão | Automático | Nulo |
| :------- | :-------------------------- | :---------- | :---------- | :--------- | :--- |
| id       | Identificador do Fornecedor | BIGINT      | -           | Sim        | Não  |
| nome     | Nome do Fornecedor          | VARCHAR(50) | -           | Não        | Não  |
| telefone | telefone do Fornecedor      | VARCHAR(50) | -           | Não        | Sim  |
| email    | Email do Fornecedor         | VARCHAR(50) | -           | Não        | Sim  |
| empresa  | Nome da Empresa             | VARCHAR(50) | -           | Não        | Sim  |

# RESTRIÇÕES DE INTEGRIDADE

# Chave Primária:

## RESTRIÇÕES DE INTEGRIDADE

| Coluna(s) |
| --------- |
| id        |

# Unicidade (valores únicos):

## RESTRIÇÕES DE INTEGRIDADE

| Nome               | Coluna(s) | Indexar |
| ------------------ | --------- | ------- |
| fornecedor_nome_uk | nome      | Sim     |

# Referêncial (chaves estrangeiras):

## RESTRIÇÕES DE INTEGRIDADE

| Nome               | Coluna(s) | Tabela referênciada | Coluna(s) referênciada(s) | Indexar |
| ------------------ | --------- | ------------------- | ------------------------- | ------- |
| fornecedor_tipo_fk | tipo      | Tabela_c            | id                        | Não     |

# Tabela Produtos

> A tabela "Produtos" armazena informações sobre os produtos disponíveis.

# COLUNAS

| Nome      | Descrição                | Domínio       | por Omissão | Automático | Nulo |
| :-------- | :----------------------- | :------------ | :---------- | :--------- | :--- |
| id        | Identificador do Produto | BIGINT        | -           | Sim        | Não  |
| nome      | Nome do Produto          | VARCHAR(50)   | -           | Não        | Não  |
| preco     | Preço do Produto         | DECIMAL(10,2) | -           | Não        | Não  |
| estoque   | Quantidade em Estoque    | INTEGER       | -           | Não        | Não  |
| descricao | Descrição do Produto     | TEXT          | -           | Não        | Sim  |

# RESTRIÇÕES DE INTEGRIDADE

# Chave Primária:

## RESTRIÇÕES DE INTEGRIDADE

| Coluna(s) |
| --------- |
| id        |

# Unicidade (valores únicos):

## RESTRIÇÕES DE INTEGRIDADE

| Nome            | Coluna(s) | Indexar |
| --------------- | --------- | ------- |
| produto_nome_uk | nome      | Sim     |

# Referêncial (chaves estrangeiras):

## RESTRIÇÕES DE INTEGRIDADE

| Nome            | Coluna(s) | Tabela referênciada | Coluna(s) referênciada(s) | Indexar |
| --------------- | --------- | ------------------- | ------------------------- | ------- |
| produto_tipo_fk | tipo      | Tabela_c            | id                        | Não     |

# Tabela Funcionários

> A tabela "Funcionários" armazena informações sobre os funcionários da empresa.

# COLUNAS

| Nome      | Descrição                    | Domínio       | por Omissão | Automático | Nulo |
| :-------- | :--------------------------- | :------------ | :---------- | :--------- | :--- |
| id        | Identificador do Funcionário | BIGINT        | -           | Sim        | Não  |
| nome      | Nome do Funcionário          | VARCHAR(50)   | -           | Não        | Não  |
| data_nasc | Data de Nascimento           | DATE          | -           | Não        | Não  |
| cargo     | Cargo do Funcionário         | VARCHAR(50)   | -           | Não        | Sim  |
| salario   | Salário do Funcionário       | DECIMAL(10,2) | -           | Não        | Não  |

# RESTRIÇÕES DE INTEGRIDADE

# Chave Primária:

## RESTRIÇÕES DE INTEGRIDADE

| Coluna(s) |
| --------- |
| id        |

# Unicidade (valores únicos):

## RESTRIÇÕES DE INTEGRIDADE

| Nome                | Coluna(s) | Indexar |
| ------------------- | --------- | ------- |
| funcionario_nome_uk | nome      | Sim     |

# Referêncial (chaves estrangeiras):

## RESTRIÇÕES DE INTEGRIDADE

| Nome                | Coluna(s) | Tabela referênciada | Coluna(s) referênciada(s) | Indexar |
| ------------------- | --------- | ------------------- | ------------------------- | ------- |
| funcionario_tipo_fk | tipo      | Tabela_c            | id                        | Não     |

# Tabela Secção

> A tabela "Secção" armazena informações sobre as seções ou departamentos da empresa.

# COLUNAS

| Nome      | Descrição              | Domínio     | por Omissão | Automático | Nulo |
| :-------- | :--------------------- | :---------- | :---------- | :--------- | :--- |
| id        | Identificador da Seção | BIGINT      | -           | Sim        | Não  |
| nome      | Nome da Seção          | VARCHAR(50) | -           | Não        | Não  |
| descricao | Descrição da Seção     | TEXT        | -           | Não        | Sim  |

# RESTRIÇÕES DE INTEGRIDADE

# Chave Primária:

## RESTRIÇÕES DE INTEGRIDADE

| Coluna(s) |
| --------- |
| id        |

# Unicidade (valores únicos):

## RESTRIÇÕES DE INTEGRIDADE

| Nome              | Coluna(s) | Indexar |
| ----------------- | --------- | ------- |
| secao_nome_unique | nome      | Sim     |

# Referêncial (chaves estrangeiras):

## RESTRIÇÕES DE INTEGRIDADE

| Nome          | Coluna(s) | Tabela referênciada | Coluna(s) referênciada(s) | Indexar |
| ------------- | --------- | ------------------- | ------------------------- | ------- |
| secao_tipo_fk | tipo      | Tabela_c            | id                        | Não     |



# Tabela Estoque

> A tabela "Estoque" armazena informações sobre o estoque de produtos da empresa.

# COLUNAS

| Nome       | Descrição                      | Domínio | por Omissão | Automático | Nulo |
| :--------- | :----------------------------- | :------ | :---------- | :--------- | :--- |
| id         | Identificador do estoque       | BIGINT  | -           | Sim        | Não  |
| produto_id | ID do produto                  | BIGINT  | -           | Não        | Não  |
| quantidade | Quantidade em estoque          | INT     | -           | Não        | Não  |
| data_atual | Data de atualização do estoque | DATE    | now()       | Não        | Não  |
| descricao  | Descrição do estoque           | TEXT    | -           | Não        | Sim  |

# RESTRIÇÕES DE INTEGRIDADE

# Chave Primária:

## RESTRIÇÕES DE INTEGRIDADE

| Coluna(s) |
| --------- |
| id        |

# Unicidade (valores únicos):

## RESTRIÇÕES DE INTEGRIDADE

| Nome               | Coluna(s)  | Indexar |
| ------------------ | ---------- | ------- |
| estoque_produto_uk | produto_id | Sim     |

# Referêncial (chaves estrangeiras):

## RESTRIÇÕES DE INTEGRIDADE

| Nome               | Coluna(s)  | Tabela referênciada | Coluna(s) referênciada(s) | Indexar |
| ------------------ | ---------- | ------------------- | ------------------------- | ------- |
| estoque_produto_fk | produto_id | Produtos            | id                        | Não     |

### Tabela Formação

> A tabela "Formação" armazena informações sobre as formações realizadas pela empresa.

# COLUNAS

| Nome      | Descrição                      | Domínio     | por Omissão | Automático | Nulo |
| :-------- | :----------------------------- | :---------- | :---------- | :--------- | :--- |
| id        | Identificador da formação      | BIGINT      | -           | Sim        | Não  |
| nome      | Nome da formação               | VARCHAR(50) | -           | Não        | Não  |
| descricao | Descrição da formação          | TEXT        | -           | Não        | Sim  |
| data      | Data da formação               | DATE        | now()       | Não        | Não  |
| duracao   | Duração da formação (em horas) | INT         | -           | Não        | Não  |
| instrutor | Nome do instrutor da formação  | VARCHAR(50) | -           | Não        | Sim  |

# RESTRIÇÕES DE INTEGRIDADE

# Chave Primária:

## RESTRIÇÕES DE INTEGRIDADE

| Coluna(s) |
| --------- |
| id        |

# Unicidade (valores únicos):

## RESTRIÇÕES DE INTEGRIDADE

| Nome             | Coluna(s) | Indexar |
| ---------------- | --------- | ------- |
| formacao_nome_uk | nome      | Sim     |

# Referêncial (chaves estrangeiras):

## RESTRIÇÕES DE INTEGRIDADE

| Nome             | Coluna(s) | Tabela referênciada | Coluna(s) referênciada(s) | Indexar |
| ---------------- | --------- | ------------------- | ------------------------- | ------- |
| formacao_inst_fk | instrutor | Funcionários        | nome                      | Não     |

# SQL

## DDL

# Criação da tabela Clientes

```sql
-- Criação da tabela Clientes
CREATE TABLE Clientes (
  idcliente INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  telefone VARCHAR(20) NOT NULL,
  morada VARCHAR(100) NOT NULL,
  idade INT NOT NULL,
  NIF VARCHAR(20) NOT NULL,
  despesa DECIMAL(10, 2) NOT NULL
);
```

# Criação da tabela Despesa

```sql
-- Criação da tabela Despesa
CREATE TABLE Despesa (
	id INT PRIMARY KEY AUTO_INCREMENT,
    idcliente INT NOT NULL,
    valor DECIMAL (10,2) NOT NULL,
    data DATE NOT NULL,
    descricao VARCHAR (100) NOT NULL,
    FOREIGN KEY (idcliente) REFERENCES clientes(idcliente)
);

```
# Criação da Tabela Fornecedores

```sql
--Criação da Tabela Fornecedores
CREATE TABLE fornecedores (
id INT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
telefone VARCHAR(20) NOT NULL,
email VARCHAR(100) NOT NULL, 
empresa VARCHAR(50)
);

```

# Criação da tabela Funcionários

```sql
-- Criação da tabela Funcionários
CREATE TABLE Funcionários (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  cargo VARCHAR(50) NOT NULL,
  data_contratacao DATE NOT NULL,
  salario DECIMAL(10,2) NOT NULL,
  departamento_id BIGINT,
  FOREIGN KEY (departamento_id) REFERENCES Departamentos(id)
);

```
# Criação da tabela Produtos

```sql
-- Criação da tabela Produtos
CREATE TABLE produtos (
id INT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
preco DECIMAL(10,2) NOT NULL,
estoque INT NOT NULL,
descricao TEXT
);
```
# Criação da tabela Secção

```sql
-- Criação da tabela Secção
CREATE TABLE Secção (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  descrição TEXT,
  gerente_id BIGINT,
  FOREIGN KEY (gerente_id) REFERENCES Funcionários(id)
);

```

# Criação da tabela ProdutosSecção

```sql
-- Criação da tabela ProdutosSecção
CREATE TABLE ProdutosSecção (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  produto_id BIGINT,
  secção_id BIGINT,
  FOREIGN KEY (produto_id) REFERENCES Produtos(id),
  FOREIGN KEY (secção_id) REFERENCES Secção(id)
);

```

# Criação da tabela Estoque


```sql
-- Criação da tabela Estoque
CREATE TABLE Estoque (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  produto_id BIGINT,
  quantidade INT NOT NULL,
  FOREIGN KEY (produto_id) REFERENCES Produtos(id)
);
```

# Criação da tabela Formação

```sql
-- Criação da tabela Formação
CREATE TABLE Formação (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  descrição TEXT,
  data DATE NOT NULL,
  duração INT NOT NULL,
  instrutor VARCHAR(50),
  FOREIGN KEY (instrutor) REFERENCES Funcionários(nome)
);
```

# SQL

## DML

# 1. Listar todos os funcionários de um departamento específico:

```sql
SELECT * FROM Funcionários WHERE departamento_id = <id_do_departamento>;
```

# 2. Obter informações sobre uma secção e o nome do gerente:

```sql
SELECT s.*, f.nome AS gerente_nome
FROM Secção s
JOIN Funcionários f ON s.gerente_id = f.id
WHERE s.id = <id_da_secção>;
```

# 3. Atualizar o salário de um funcionário:

```sql
UPDATE Funcionários SET salario = <novo_salario> WHERE id = <id_do_funcionário>;
```

# 4. Inserir um novo produto em uma secção:

```sql
INSERT INTO ProdutosSecção (produto_id, secção_id) VALUES (<id_do_produto>, <id_da_secção>);
```

# 5. Remover um registro de formação:

```sql
DELETE FROM Formação WHERE id = <id_da_formação>;
```
