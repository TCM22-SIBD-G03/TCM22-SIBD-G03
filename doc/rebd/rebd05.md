# C3 : SQL

## DDL

_(Apresentar o SQL para criação do esquema definido acima num SGBD MySQL.)_


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

-- Criação da tabela Despesa
CREATE TABLE Despesa (
	id INT PRIMARY KEY AUTO_INCREMENT,
    idcliente INT NOT NULL,
    valor DECIMAL (10,2) NOT NULL,
    data DATE NOT NULL,
    descricao VARCHAR (100) NOT NULL,
    FOREIGN KEY (idcliente) REFERENCES clientes(idcliente)
);

--Criação da Tabela Fornecedores
CREATE TABLE fornecedores (
id INT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
telefone VARCHAR(20) NOT NULL,
email VARCHAR(100) NOT NULL, 
empresa VARCHAR(50)
);

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

-- Criação da tabela Produtos
CREATE TABLE produtos (
id INT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
preco DECIMAL(10,2) NOT NULL,
estoque INT NOT NULL,
descricao TEXT
);

-- Criação da tabela Secção
CREATE TABLE Secção (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  descrição TEXT,
  gerente_id BIGINT,
  FOREIGN KEY (gerente_id) REFERENCES Funcionários(id)
);

-- Criação da tabela ProdutosSecção
CREATE TABLE ProdutosSecção (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  produto_id BIGINT,
  secção_id BIGINT,
  FOREIGN KEY (produto_id) REFERENCES Produtos(id),
  FOREIGN KEY (secção_id) REFERENCES Secção(id)
);

-- Criação da tabela Estoque
CREATE TABLE Estoque (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  produto_id BIGINT,
  quantidade INT NOT NULL,
  FOREIGN KEY (produto_id) REFERENCES Produtos(id)
);

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

## DML

1. Listar todos os funcionários de um departamento específico:

```sql
SELECT * FROM Funcionários WHERE departamento_id = <id_do_departamento>;
```

2. Obter informações sobre uma secção e o nome do gerente:

```sql
SELECT s.*, f.nome AS gerente_nome
FROM Secção s
JOIN Funcionários f ON s.gerente_id = f.id
WHERE s.id = <id_da_secção>;
```

3. Atualizar o salário de um funcionário:

```sql
UPDATE Funcionários SET salario = <novo_salario> WHERE id = <id_do_funcionário>;
```

4. Inserir um novo produto em uma secção:

```sql
INSERT INTO ProdutosSecção (produto_id, secção_id) VALUES (<id_do_produto>, <id_da_secção>);
```

5. Remover um registro de formação:

```sql
DELETE FROM Formação WHERE id = <id_da_formação>;
```

---
[< Previous](rebd04.md) | [^ Main](https://github.com/TCM22-SIBD-G03/TCM22-SIBD-G03) | Next >
:--- | :---: | ---: 
