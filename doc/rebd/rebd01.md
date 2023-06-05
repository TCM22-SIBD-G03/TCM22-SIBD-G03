# C1 : Introdução


## Descrição do trabalho

O trabalho consiste na especificação e desenvolvimento de um sistema para a organização da nossa mercearia que é constituída pelas entidades (Cliente, Fornecedores, Funcionários, Produtos) que são:

O Cliente tem uma forma de identificação, como vários clientes não podem ter o mesmo número de identificação, o Cartão de identificação vem com o número de cliente, morada e o número de telefone e a suposta foto do cliente, idade. Temos também o histórico de compras dos clientes para fins de *marketing*.

Temos vários fornecedores, como:

- Fornecedor de Frutas e Legumes é a empresa Hortifruti que tem um contacto específico, um armazém e o endereço eletrónico. Esta empresa responsabiliza toda transição até chegar ao nosso estabelecimento e cada produto tem um preço específico e tamanho;
- Fornecedor de Carne e Peixe é a empresa Sabor do Mar que é responsável pela venda e transporte dessas possíveis mercadorias mensais que tem um contacto específico, loja específica e o endereço eletrónico;
- Fornecedor de Produtos Lácteos e Queijos que é a empresa Leite Saudável que é responsável pela venda e transporte dessas possíveis mercadorias mensais que tem um contacto específico, loja específica e o endereço eletrónico;

Relativamente aos funcionários, eles têm uma respetiva área de trabalho, nome, morada, número, telefone e o seu horário de trabalho.

Respetiva área de trabalho dos funcionários:

- Caixa (nome, morada, número, telefone);
- Repositor (nome, morada, número telefone);
- Atendente (nome, morada, número, telefone);

Temos 20 clientes que são:

1. Ana Silva, o seu número de cliente é 01, mora no Porto, número de telefone é 914261225 e tem 30 anos;
2. João Santos, o seu número de cliente é 02, mora em Matosinhos, número de telefone é 981595924 e tem 28 anos;
3. Maria Andrade, o seu número de cliente é 03, mora no Porto, número de telefone é 958624759 e tem 45 anos;
4. Pedro Sousa, o seu número de cliente é 04, mora em Vila Nova de Gaia, número de telefone é 963568987 e tem 23 anos;
5. Sofia Oliveira, o seu número de cliente é 05, mora em Gondomar, número de telefone é 968475123 e tem 29 anos;
6. José Silva, o seu número de cliente é 06, mora em Santo Tirso, número de telefone é 987654213 e tem 50 anos;
7. Margarida Vieira, o seu número de cliente é 07, mora em Valongo, número de telefone é 9748546231 e tem 36 anos;
8. Luís Costa, o seu número de cliente é 08, mora no Porto, número de telefone é 963528741 e tem 42 anos;
9. Joana Ferreira, o seu número de cliente é 09, mora em Vila Nova de Gaia, número de telefone é 951623478 e tem 26 anos;
10. Rui Martins, o seu número de cliente é 10, mora no Porto, número de telefone é 984751236 e tem 32 anos;
11. Ângela Alves, o seu número de cliente é 11, mora em Santo Tirso, número de telefone é 916548732 e tem 24 anos;
12. Bruno Santos, o seu número de cliente é 11, mora em Matosinhos, número de telefone é 935621478 e tem 27 anos.
13. Juliana Silva, número de cliente 93748, morada em (o) Rua das Flores, n.º 10, Lisboa, telefone 910234567, idade 35 anos.
14. Marcos Oliveira, número de cliente 84190, morada em (o) Rua das Oliveiras, n.º 5, Porto, telefone 926345678, idade 42 anos.
15. Raquel Santos, número de cliente 75123, morada em (o) Avenida Central, n.º 25, Braga, telefone 936123456, idade 28 anos.
16. Bruno Santos, número de cliente 62047, morada em (o) Rua da Liberdade, n.º 15, Coimbra, telefone 966987654, idade 37 anos.
17. Carla Martins, número de cliente 41782, morada em (o) Rua dos Cedros, n.º 8, Faro, telefone 917654321, idade 29 anos.
18. Sofia Almeida, número de cliente 32890, morada em (o) Rua das Palmeiras, n.º 12, Aveiro, telefone 925765432, idade 45 anos.
19. Pedro Gonçalves, número de cliente 21657, morada em (o) Rua do Mar, n.º 20, Cascais, telefone 913456789, idade 50 anos.
20. Ana Santos, número de cliente 12983, morada em (o) Avenida dos Pinheiros, n.º 6, Vila Real, telefone 935678901, idade 31 anos.

Com base nas informações acima, podemos definir o modelo de dados para o sistema de informação da mercearia. O modelo de dados consiste em entidades (Cliente, Fornecedor e Funcionário) e os seus atributos relevantes. Cada entidade tem um identificador único (*ID*) para garantir a integridade dos dados.

A entidade Cliente tem os seguintes atributos: *ID*, nome, morada, número de telefone, idade e forma de pagamento. A forma de pagamento pode ser semanal ou mensal e pode ser feita através de multibanco, dinheiro em mão ou *Mb Way*.

A entidade Fornecedor tem os seguintes atributos: *ID*, nome, contacto específico, loja/ armazém específico e endereço eletrónico.

A entidade Funcionário tem os seguintes atributos: *ID*, nome, morada e número de telefone e a sua respetiva área de trabalho: Caixa, Repositor e Atendente.
Para cada funcionário, adicionamos também os seus detalhes de formação ou experiência, dependendo do cargo.

Assim, o modelo de dados fica definido da seguinte forma:

Entidade Cliente:

- *ID* (identificador único)
- Nome
- Morada
- Número de telefone
- Idade
- Forma de pagamento
- NIF


Entidade Fornecedor:

- *ID* (identificador único)
- Nome
- Contacto específico
- Loja/ Armazém específico
- Endereço eletrónico

Entidade Funcionário:

- *ID* (identificador único)
- Nome
- Morada
- Número de telefone
- Área de trabalho (Caixa, Repositor, Atendente)
- Formação/Experiência (se aplicável)


Entidade Produto:

- Nome
- Preço
- Origem
- *Código de Barras* (identificador único)



Com este modelo de dados, podemos informatizar o sistema de informação da mercearia e gerir facilmente as informações dos clientes, fornecedores e funcionários, bem como as transações financeiras e compras de mercadorias.


## Descrição dos requisitos do utilizador

Descrição dos requisitos do utilizador:

O sistema de informação da mercearia deve ser capaz de satisfazer as seguintes necessidades dos utilizadores:

1. Gestão de Clientes:
   - Cadastrar novos clientes com informações como nome, morada, número de telefone, idade e forma de pagamento.
   - Atribuir um número de identificação único a cada cliente.
   - Armazenar o histórico de compras dos clientes para fins de marketing.
   - Permitir a consulta e atualização dos dados dos clientes.

2. Gestão de Fornecedores:
   - Registrar fornecedores com informações como nome, contacto específico, loja/armazém específico e endereço eletrónico.
   - Atribuir um número de identificação único a cada fornecedor.
   - Permitir a consulta e atualização dos dados dos fornecedores.

3. Gestão de Funcionários:
   - Adicionar funcionários com informações como nome, morada, número de telefone e área de trabalho (Caixa, Repositor, Atendente).
   - Atribuir um número de identificação único a cada funcionário.
   - Registrar a formação ou experiência de cada funcionário, quando aplicável.
   - Permitir a consulta e atualização dos dados dos funcionários.

4. Gestão de Produtos:
   - Cadastrar produtos com informações como nome, preço, origem e código de barras (identificador único).
   - Manter um catálogo atualizado de todos os produtos disponíveis na mercearia.
   - Permitir a consulta, atualização e adição de novos produtos.

5. Transações Financeiras:
   - Registrar as transações financeiras relacionadas às compras dos clientes e pagamentos aos fornecedores.
   - Armazenar informações sobre os pagamentos realizados pelos clientes e os valores a receber.
   - Gerar relatórios de vendas e pagamentos.

6. Interface de Utilizador:
   - Fornecer uma interface intuitiva e fácil de usar para todos os utilizadores.
   - Permitir a pesquisa rápida de clientes, fornecedores, funcionários e produtos.
   - Possibilitar a geração de relatórios com base nos dados armazenados.

7. Segurança e Privacidade:
   - Garantir a segurança dos dados dos clientes, fornecedores e funcionários.
   - Implementar medidas de proteção para evitar acesso não autorizado ao sistema.
   - Cumprir com as regulamentações de privacidade de dados aplicáveis.

8. Escalabilidade e Desempenho:
   - O sistema deve ser capaz de lidar com um grande número de clientes, fornecedores, funcionários e produtos.
   - Garantir um desempenho eficiente mesmo com um volume alto de transações e consultas simultâneas.

9. Integração com Sistemas Externos:
   - Permitir a integração com sistemas externos, como sistemas de pagamento eletrónico e contabilidade.

10. Backup e Recuperação de Dados:
    - Realizar backups regulares dos dados do sistema e garantir a possibilidade de recuperação em caso de falhas ou perdas de dados.

11. Personalização:
    - Permitir personalização do sistema de acordo com as necessidades e preferências da mercearia.

Esses requisitos visam fornecer uma descrição básica das funcionalidades e características esperadas para o sistema de informação da mercearia, mas é importante destacar que podem haver outros requisitos específicos que devem ser levados em consideração durante a fase de desenvolvimento e implementação do sistema.


---
[< Previous](rebd00.md) | [^ Main](https://github.com/TCM22-SIBD-G03/TCM22-SIBD-G03) | [Next >](rebd02.md)
:--- | :---: | ---: 