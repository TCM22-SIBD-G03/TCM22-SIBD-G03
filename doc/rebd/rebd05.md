# C3 : SQL

## DDL

_(Apresentar o SQL para criação do esquema definido acima num SGBD MySQL.)_


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