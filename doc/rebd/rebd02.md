# C2 : Esquema conceptual

## Modelo E/A

![Modela E/A](../rei/images/image01.png)

## Regras de negócio adicionais (Restrições)

1. Cliente:
   - Um cliente deve ter um número de identificação único.
   - O número de telefone de um cliente deve ser válido e único.
   - O nome do cliente não pode ser vazio.

2. Fornecedor:
   - Um fornecedor deve ter um número de identificação único.
   - O contacto específico do fornecedor deve ser válido e único.
   - O endereço eletrónico do fornecedor deve ser válido e único.
   - O nome do fornecedor não pode ser vazio.

3. Produto:
   - Cada produto deve ter um código de barras único.
   - O nome do produto não pode ser vazio.
   - O preço do produto deve ser um valor válido e positivo.
   - O produto deve ter uma origem definida.

4. Funcionário:
   - Cada funcionário deve ter um número de identificação único.
   - O número de telefone do funcionário deve ser válido e único.
   - O nome do funcionário não pode ser vazio.
   - A área de trabalho do funcionário deve ser válida (Caixa, Repositor, Atendente).

5. Formação:
   - A formação de um funcionário deve estar associada a um funcionário existente.
   - A experiência de um funcionário deve estar associada a um funcionário existente.

Regras de associação adicionais:

1. Compra:
   - Um cliente pode comprar vários produtos.
   - Um funcionário pode atender vários clientes.
   - A associação "atende" representa o atendimento de um cliente por um funcionário.

2. Fornece:
   - Um fornecedor pode fornecer vários produtos.
   - Um produto pode ser fornecido por vários fornecedores.
   - A associação "fornece" representa o fornecimento de produtos por um fornecedor.

3. Armazena:
   - Um funcionário pode ser responsável por armazenar vários produtos.
   - Um produto pode ser armazenado por vários funcionários.
   - A associação "armazena" representa a responsabilidade de um funcionário em armazenar produtos.
  
4. Trabalha:
   - Um funcionário pode trabalhar em apenas uma secção.
   - Uma secção pode ter vários funcionários a trabalhar lá.
   - A associação "trabalha" representa a responsabilidade de um funcionário em relação à secção onde trabalha.
  
5. Exerce:
   - Um funcionário pode exercer apenas uma formação.
   - Uma formação pode ser dada a vários funcionários.
   - A associação "exerce" representa a formação que um funcionário têm.

Essas regras de negócio adicionais e restrições ajudam a garantir a integridade e consistência dos dados no sistema de informação da mercearia, além de definir os relacionamentos e limitações entre as entidades e associações. É importante considerar essas regras ao projetar e desenvolver o sistema.

---
[< Previous](rebd01.md) | [^ Main](https://github.com/TCM22-SIBD-G03/TCM22-SIBD-G03) | [Next >](rebd03.md)
:--- | :---: | ---: 
