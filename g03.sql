CREATE DATABASE  IF NOT EXISTS `g03` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `g03`;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `idcliente` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `morada` varchar(100) NOT NULL,
  `idade` int NOT NULL,
  `NIF` varchar(20) NOT NULL,
  `despesa` decimal(10,2) NOT NULL,
  PRIMARY KEY (`idcliente`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'João Silva','joao.silva@example.com','123456789','Rua A, 123',30,'123456789',100.50),(2,'Maria Santos','maria.santos@example.com','987654321','Avenida B, 456',25,'987654321',250.75),(3,'Pedro Alves','pedro.alves@example.com','555555555','Praça C, 789',40,'555555555',50.00),(4,'Carlos Santos','carlos.santos@example.com','222222222','Rua E, 987',32,'222222222',80.50),(5,'Mariana Silva','mariana.silva@example.com','333333333','Praça F, 654',45,'333333333',200.75),(6,'Pedro Oliveira','pedro.oliveira@example.com','444444444','Avenida G, 123',31,'444444444',95.20),(7,'Sofia Almeida','sofia.almeida@example.com','555555555','Rua H, 789',26,'555555555',180.50),(8,'João Pereira','joao.pereira@example.com','666666666','Praça I, 456',37,'666666666',120.75),(9,'Luisa Fernandes','luisa.fernandes@example.com','777777777','Avenida J, 987',41,'777777777',85.30),(10,'Ricardo Sousa','ricardo.sousa@example.com','888888888','Rua K, 654',29,'888888888',210.25),(11,'Inês Costa','ines.costa@example.com','999999999','Praça L, 321',33,'999999999',75.80),(12,'Miguel Santos','miguel.santos@example.com','101010101','Avenida M, 987',27,'101010101',150.00),(13,'Beatriz Fernandes','beatriz.fernandes@example.com','111111111','Rua N, 456',30,'111111111',100.50),(14,'Gustavo Silva','gustavo.silva@example.com','121212121','Praça O, 321',35,'121212121',190.75),(15,'Ana Pereira','ana.pereira@example.com','131313131','Avenida P, 987',42,'131313131',110.20),(16,'Carlos Rodrigues','carlos.rodrigues@example.com','141414141','Rua Q, 654',25,'141414141',225.50),(17,'Mariana Costa','mariana.costa@example.com','151515151','Praça R, 321',39,'151515151',95.75),(18,'Pedro Oliveira','pedro.oliveira@example.com','161616161','Avenida S, 987',31,'161616161',180.30),(19,'Sofia Almeida','sofia.almeida@example.com','171717171','Rua T, 456',26,'171717171',120.25),(20,'João Pereira','joao.pereira@example.com','181818181','Praça U, 321',37,'181818181',85.80),(21,'Luisa Fernandes','luisa.fernandes@example.com','191919191','Avenida V, 987',41,'191919191',195.00),(22,'Ricardo Sousa','ricardo.sousa@example.com','202020202','Rua X, 654',29,'202020202',130.50),(23,'Inês Costa','ines.costa@example.com','212121212','Praça Y, 321',33,'212121212',210.75),(24,'Miguel Santos','miguel.santos@example.com','222222222','Avenida Z, 987',27,'222222222',90.20),(25,'Beatriz Fernandes','beatriz.fernandes@example.com','232323232','Rua AA, 456',30,'232323232',175.50),(26,'Gustavo Silva','gustavo.silva@example.com','242424242','Praça BB, 321',35,'242424242',105.75),(27,'Ana Pereira','ana.pereira@example.com','252525252','Avenida CC, 987',42,'252525252',220.30),(28,'Carlos Rodrigues','carlos.rodrigues@example.com','262626262','Rua DD, 654',25,'262626262',150.25),(29,'Mariana Costa','mariana.costa@example.com','272727272','Praça EE, 321',39,'272727272',95.80),(30,'Laura Ferreira','laura.ferreira@example.com','444444444','Rua X, 789',35,'444444444',75.25);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `despesa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `despesa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idcliente` int NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `data` date NOT NULL,
  `descricao` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idcliente` (`idcliente`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `despesa` WRITE;
/*!40000 ALTER TABLE `despesa` DISABLE KEYS */;
INSERT INTO `despesa` VALUES (1,1,15.99,'2023-05-01','Compra de frutas frescas'),(2,2,10.50,'2023-05-02','Aquisição de legumes para salada'),(3,3,25.75,'2023-05-03','Compra de carne para churrasco'),(4,4,8.99,'2023-05-04','Aquisição de peixe fresco'),(5,5,12.49,'2023-05-05','Compra de produtos lácteos'),(6,6,7.50,'2023-05-06','Aquisição de itens de limpeza'),(7,7,18.20,'2023-05-07','Compra de cereais e grãos'),(8,8,6.99,'2023-05-08','Aquisição de produtos de higiene pessoal'),(9,9,14.30,'2023-05-09','Compra de pão fresco'),(10,10,9.75,'2023-05-10','Aquisição de bebidas não alcoólicas'),(11,11,23.50,'2023-05-11','Compra de alimentos enlatados'),(12,12,13.80,'2023-05-12','Aquisição de snacks e petiscos'),(13,13,16.99,'2023-05-13','Compra de produtos de limpeza doméstica'),(14,14,11.25,'2023-05-14','Aquisição de produtos de higiene bucal'),(15,15,28.40,'2023-05-15','Compra de produtos congelados'),(16,16,9.99,'2023-05-16','Aquisição de especiarias e temperos'),(17,17,22.75,'2023-05-17','Compra de produtos para cuidados pessoais'),(18,18,7.50,'2023-05-18','Aquisição de produtos de panificação'),(19,19,19.30,'2023-05-19','Compra de alimentos orgânicos'),(20,20,14.75,'2023-05-20','Aquisição de produtos para limpeza de casa'),(21,21,26.50,'2023-05-21','Compra de snacks saudáveis'),(22,22,12.80,'2023-05-22','Aquisição de produtos de cuidados com a pele'),(23,23,17.99,'2023-05-23','Compra de alimentos sem glúten'),(24,24,9.25,'2023-05-24','Aquisição de bebidas alcoólicas'),(25,25,24.75,'2023-05-25','Compra de produtos de limpeza para banheiro'),(26,26,8.99,'2023-05-26','Aquisição de produtos de higiene feminina'),(27,27,21.50,'2023-05-27','Compra de produtos para cuidados com o cabelo'),(28,28,15.75,'2023-05-28','Aquisição de produtos para animais de estimação'),(29,29,18.30,'2023-05-29','Compra de produtos dietéticos'),(30,30,11.99,'2023-05-30','Aquisição de produtos de limpeza multiuso');
/*!40000 ALTER TABLE `despesa` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `estoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estoque` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `produto_id` bigint DEFAULT NULL,
  `quantidade` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `produto_id` (`produto_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `estoque` WRITE;
/*!40000 ALTER TABLE `estoque` DISABLE KEYS */;
INSERT INTO `estoque` VALUES (1,1,10),(2,2,20),(3,3,15),(4,4,25),(5,5,18),(6,6,12),(7,7,5),(8,8,8),(9,9,10),(10,10,15),(11,11,8),(12,12,10),(13,13,12),(14,14,20),(15,15,15),(16,16,10),(17,17,30),(18,18,25),(19,19,20),(20,20,5),(21,21,8),(22,22,10),(23,23,12),(24,24,15),(25,25,18),(26,26,20),(27,27,10),(28,28,8),(29,29,10),(30,30,15);
/*!40000 ALTER TABLE `estoque` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `formacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formacao` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `descricao` text,
  `data` date NOT NULL,
  `duracao` int NOT NULL,
  `instrutor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `instrutor` (`instrutor`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `formacao` WRITE;
/*!40000 ALTER TABLE `formacao` DISABLE KEYS */;
INSERT INTO `formacao` VALUES (1,'Atendimento','Curso de atendimento ao cliente','2023-01-15',2,'João Silva'),(2,'Secretariado','Curso de técnicas de secretariado','2023-02-05',3,'Maria Santos'),(3,'Administração','Curso de princípios de administração','2023-03-10',4,'Pedro Costa'),(4,'Segurança no Trabalho','Curso de segurança no ambiente de trabalho','2023-04-20',6,'Ana Ferreira'),(5,'Gestão','Curso de fundamentos de gestão','2023-05-12',5,'António Oliveira'),(6,'Armazém','Curso de gestão de armazéns','2023-06-08',4,'Rui Sousa'),(7,'Distribuição','Curso de logística e distribuição','2023-07-22',6,'Sara Rodrigues'),(8,'Atendimento','Curso de atendimento ao cliente','2023-08-05',3,'João Silva'),(9,'Secretariado','Curso de técnicas de secretariado','2023-09-18',2,'Maria Santos'),(10,'Administração','Curso de princípios de administração','2023-10-30',4,'Pedro Costa'),(11,'Segurança no Trabalho','Curso de segurança no ambiente de trabalho','2023-11-12',6,'Ana Ferreira'),(12,'Gestão','Curso de fundamentos de gestão','2023-12-09',5,'António Oliveira'),(13,'Armazém','Curso de gestão de armazéns','2024-01-17',4,'Rui Sousa'),(14,'Distribuição','Curso de logística e distribuição','2024-02-28',6,'Sara Rodrigues'),(15,'Atendimento','Curso de atendimento ao cliente','2024-03-05',3,'João Silva'),(16,'Secretariado','Curso de técnicas de secretariado','2024-04-14',2,'Maria Santos'),(17,'Administração','Curso de princípios de administração','2024-05-27',4,'Pedro Costa'),(18,'Segurança no Trabalho','Curso de segurança no ambiente de trabalho','2024-06-09',6,'Ana Ferreira'),(19,'Gestão','Curso de fundamentos de gestão','2024-07-01',5,'António Oliveira'),(20,'Armazém','Curso de gestão de armazéns','2024-08-20',4,'Rui Sousa'),(21,'Distribuição','Curso de logística e distribuição','2024-09-08',6,'Sara Rodrigues'),(22,'Atendimento','Curso de atendimento ao cliente','2024-10-12',3,'João Silva'),(23,'Secretariado','Curso de técnicas de secretariado','2024-11-24',2,'Maria Santos'),(24,'Administração','Curso de princípios de administração','2024-12-10',4,'Pedro Costa'),(25,'Segurança no Trabalho','Curso de segurança no ambiente de trabalho','2025-01-18',6,'Ana Ferreira'),(26,'Gestão','Curso de fundamentos de gestão','2025-02-09',5,'António Oliveira'),(27,'Armazém','Curso de gestão de armazéns','2025-03-22',4,'Rui Sousa'),(28,'Distribuição','Curso de logística e distribuição','2025-04-05',6,'Sara Rodrigues'),(29,'Atendimento','Curso de atendimento ao cliente','2025-05-14',3,'João Silva'),(30,'Secretariado','Curso de técnicas de secretariado','2025-06-28',2,'Maria Santos');
/*!40000 ALTER TABLE `formacao` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `fornecedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedores` (
  `id` int NOT NULL,
  `nome` varchar(50) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `fornecedores` WRITE;
/*!40000 ALTER TABLE `fornecedores` DISABLE KEYS */;
INSERT INTO `fornecedores` VALUES (1,'Distribuidora Sabor Carne','123456789','contato@saborcarne.com','Sabor Carne Ltda.'),(2,'Peixaria Mar Fresco','987654321','contato@marfresco.com','Mar Fresco Distribuição de Pescados'),(3,'Hortifruti Verduras & Cia','789456123','contato@verdurasecia.com','Verduras & Cia Comércio de Legumes'),(4,'Frutaria Delícia Tropical','654789321','contato@deliciatropical.com','Delícia Tropical Frutas e Hortaliças Ltda.'),(5,'Laticínios Leite Bom','321654987','contato@leitebom.com','Leite Bom Indústria de Laticínios'),(6,'Carnes Nobres','987321654','contato@carnesnobres.com','Carnes Nobres Distribuidora'),(7,'Peixes do Mar','654321987','contato@peixesdomar.com','Peixes do Mar Pescados Ltda.'),(8,'Horta Verde','789123456','contato@hortaverde.com','Horta Verde Comércio de Hortifruti'),(9,'Frutas Deliciosas','321789654','contato@frutasdeliciosas.com','Frutas Deliciosas Ltda.'),(10,'Laticínios Sabor Puro','456987321','contato@saborpuro.com','Sabor Puro Laticínios e Derivados'),(11,'Carnes Gourmet','123321123','contato@carnesgourmet.com','Carnes Gourmet Distribuidora'),(12,'Peixaria Oceano Azul','321123321','contato@oceanoazul.com','Oceano Azul Distribuição de Pescados'),(13,'Hortifruti Orgânico','456456456','contato@hortifrutiorganico.com','Hortifruti Orgânico Ltda.'),(14,'Frutas Frescas','789789789','contato@frutasfrescas.com','Frutas Frescas Comércio de Hortifrutigranjeiros'),(15,'Laticínios Delícia','123123123','contato@laticiniosdelicia.com','Laticínios Delícia Ltda.'),(16,'Carnes Prime','321321321','contato@carnesprime.com','Carnes Prime Distribuidora'),(17,'Peixaria Maré Alta','654654654','contato@marealta.com','Maré Alta Pescados e Frutos do Mar'),(18,'Hortifruti Sabores Naturais','987987987','contato@saboresnaturais.com','Sabores Naturais Hortifruti Ltda.'),(19,'Frutaria Tropical','123654789','contato@frutariatropical.com','Frutaria Tropical Frutas Selecionadas'),(20,'Laticínios Fazenda Feliz','987321456','contato@fazendafeliz.com','Fazenda Feliz Laticínios'),(21,'Carnes Premium','456321654','contato@carnespremium.com','Carnes Premium Distribuidora'),(22,'Peixaria Maré Mansa','789654321','contato@maremansa.com','Maré Mansa Pescados e Frutos do Mar'),(23,'Hortifruti Natureza Viva','321456789','contato@naturezaviva.com','Natureza Viva Hortifruti Ltda.'),(24,'Frutas do Cerrado','654987321','contato@frutasdocerrado.com','Frutas do Cerrado Distribuidora'),(25,'Laticínios Leite Puro','789321654','contato@leitepuro.com','Leite Puro Indústria de Laticínios'),(26,'Carnes Select','123789123','contato@carnesselect.com','Carnes Select Distribuidora'),(27,'Peixaria Oceano Azul','321456123','contato@oceanoazul.com','Oceano Azul Distribuição de Pescados'),(28,'Hortifruti Caminho Verde','654789321','contato@caminhoverde.com','Caminho Verde Hortifruti e Legumes'),(29,'Frutas da Estação','987123456','contato@frutasdaestacao.com','Frutas da Estação Comércio de Hortifrutigranjeiros'),(30,'Laticínios Vaca Feliz','456321987','contato@vacafeliz.com','Vaca Feliz Laticínios Ltda.');
/*!40000 ALTER TABLE `fornecedores` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarios` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `data_contratacao` date NOT NULL,
  `salario` decimal(10,2) NOT NULL,
  `departamento_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `departamento_id` (`departamento_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (1,'João Silva','Gerente','2022-01-10',5000.00,1),(2,'Maria Santos','Assistente Administrativo','2022-02-15',3000.00,1),(3,'Pedro Almeida','Vendedor','2022-03-20',2500.00,2),(4,'Ana Oliveira','Vendedor','2022-04-25',2500.00,2),(5,'Rui Pereira','Estoquista','2022-05-30',2000.00,3),(6,'Sofia Costa','Caixa','2022-06-05',2000.00,4),(7,'Miguel Carvalho','Assistente de Recursos Humanos','2022-07-10',3500.00,5),(8,'Carolina Ferreira','Vendedor','2022-08-15',2500.00,2),(9,'André Santos','Estoquista','2022-09-20',2000.00,3),(10,'Inês Rodrigues','Caixa','2022-10-25',2000.00,4),(11,'Paulo Sousa','Vendedor','2022-11-30',2500.00,2),(12,'Mariana Lima','Estoquista','2023-01-05',2000.00,3),(13,'Hugo Castro','Caixa','2023-02-10',2000.00,4),(14,'Catarina Costa','Vendedor','2023-03-15',2500.00,2),(15,'Diogo Fernandes','Estoquista','2023-04-20',2000.00,3),(16,'Raquel Santos','Caixa','2023-05-25',2000.00,4),(17,'Tiago Oliveira','Vendedor','2023-06-30',2500.00,2),(18,'Sara Alves','Estoquista','2023-08-05',2000.00,3),(19,'António Silva','Caixa','2023-09-10',2000.00,4),(20,'Teresa Mendes','Vendedor','2023-10-15',2500.00,2),(21,'Hélder Ribeiro','Estoquista','2023-11-20',2000.00,3),(22,'Carla Gomes','Caixa','2023-12-25',2000.00,4),(23,'Bruno Almeida','Vendedor','2024-01-30',2500.00,2),(24,'Lúcia Costa','Estoquista','2024-03-05',2000.00,3),(25,'José Rodrigues','Caixa','2024-04-10',2000.00,4),(26,'Ingrid Santos','Vendedor','2024-05-15',2500.00,2),(27,'Fernando Pereira','Estoquista','2024-06-20',2000.00,3),(28,'Marta Oliveira','Caixa','2024-07-25',2000.00,4),(29,'Renato Sousa','Vendedor','2024-08-30',2500.00,2),(30,'Laura Mendes','Estoquista','2024-10-05',2000.00,3);
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `produto_id` int NOT NULL,
  `nome` varchar(50) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `estoque_id` int DEFAULT NULL,
  `descricao` text,
  PRIMARY KEY (`produto_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'Maçã',1.99,1,'Fruta'),(2,'Banana',0.99,1,'Fruta'),(3,'Laranja',2.49,1,'Fruta'),(4,'Cenoura',0.79,2,'Legume'),(5,'Alface',1.29,2,'Legume'),(6,'Tomate',1.49,2,'Legume'),(7,'Frango',5.99,3,'Carne'),(8,'Bife',8.99,3,'Carne'),(9,'Salmão',12.99,4,'Peixe'),(10,'Atum',3.99,4,'Peixe'),(11,'Leite',0.99,5,'Lácteo'),(12,'Queijo',2.99,5,'Lácteo'),(13,'Iogurte',1.49,5,'Lácteo'),(14,'Arroz',1.99,6,'Cereal'),(15,'Feijão',1.49,6,'Leguminosa'),(16,'Massa',0.99,6,'Cereal'),(17,'Batata',0.69,2,'Legume'),(18,'Cebola',0.89,2,'Legume'),(19,'Pepino',1.19,2,'Legume'),(20,'Peru',9.99,3,'Carne'),(21,'Corvina',7.99,4,'Peixe'),(22,'Leite de Amêndoa',2.49,5,'Lácteo'),(23,'Manteiga',2.79,5,'Lácteo'),(24,'Iogurte de Morango',1.69,5,'Lácteo'),(25,'Farinha de Trigo',1.49,6,'Cereal'),(26,'Milho Enlatado',0.99,6,'Cereal'),(27,'Azeite',3.99,6,'Condimento'),(28,'Sal',0.79,6,'Condimento'),(29,'Pasta de Amendoim',4.99,6,'Outros'),(30,'Chocolate',2.49,7,'Doce');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `seccao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seccao` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `descricao` text,
  `gerente_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gerente_id` (`gerente_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `seccao` WRITE;
/*!40000 ALTER TABLE `seccao` DISABLE KEYS */;
INSERT INTO `seccao` VALUES (1,'Vendas','Responsável pelas vendas',3),(2,'Recursos Humanos','Responsável pelos recursos humanos',7),(3,'Estoque','Responsável pelo controle de estoque',5),(4,'Caixa','Responsável pelas operações de caixa',6),(5,'Marketing','Responsável pelo marketing',9),(6,'Contabilidade','Responsável pela contabilidade',11),(7,'TI','Responsável pela infraestrutura de TI',13),(8,'Logística','Responsável pela logística e distribuição',15),(9,'Compras','Responsável pelas compras',17),(10,'Produção','Responsável pela produção',19),(11,'Qualidade','Responsável pelo controle de qualidade',21),(12,'Atendimento ao Cliente','Responsável pelo atendimento ao cliente',23),(13,'Jurídico','Responsável pelas questões jurídicas',25),(14,'RH','Responsável pelos recursos humanos',27),(15,'Marketing','Responsável pelo marketing',29),(16,'Contabilidade','Responsável pela contabilidade',2),(17,'TI','Responsável pela infraestrutura de TI',4),(18,'Logística','Responsável pela logística e distribuição',6),(19,'Compras','Responsável pelas compras',8),(20,'Produção','Responsável pela produção',10),(21,'Qualidade','Responsável pelo controle de qualidade',12),(22,'Atendimento ao Cliente','Responsável pelo atendimento ao cliente',14),(23,'Jurídico','Responsável pelas questões jurídicas',16),(24,'RH','Responsável pelos recursos humanos',18),(25,'Marketing','Responsável pelo marketing',20),(26,'Contabilidade','Responsável pela contabilidade',22),(27,'TI','Responsável pela infraestrutura de TI',24),(28,'Logística','Responsável pela logística e distribuição',26),(29,'Compras','Responsável pelas compras',28),(30,'Produção','Responsável pela produção',30);
/*!40000 ALTER TABLE `seccao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
