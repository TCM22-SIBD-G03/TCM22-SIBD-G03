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



## Normalização do Esquema Relacional

### 1NF

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

### 2NF

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

### 3NF

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

### BCNF

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



---
| [< Previous](rebd02.md) | [^ Main](https://github.com/TCM22-SIBD-G03/TCM22-SIBD-G03) | [Next >](rebd04.md) |
| :---------------------- | :--------------------------------------------------------: | ------------------: |
