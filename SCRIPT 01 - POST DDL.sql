/*
COMANDOS DDL
CREATE - CRIA OBJETOS
ALTER - ALTERA OBJETOS
DROP - EXCLUI OBJETOS
TRUNCATE - APAGA TODOS OS REGISTROS DE UMA TABELA
*/

/* CRIANDO O BANCO*/
CREATE DATABASE MUNDO_LOJA;

/*USANDO O BANCO CRIADO*/
USE MUNDO_LOJA;
USE master;

/* EXCLUIR O BANCO*/
DROP DATABASE MUNDO_LOJA;

/* CRIANDO A TABELA CLIENTE*/
CREATE TABLE CLIENTE(
CODIGO INT IDENTITY PRIMARY KEY,
NOME VARCHAR(200) NOT NULL,
ENDERECO VARCHAR (200) NULL
);

/*IDENTITY - CRIA UMA AUTO INCREMENTA��O NA CHAVE PRIMARIA DA TABELA EX.: 1,2,3,4,5......
NOT NULL - N�O PERMITE NULOS
NULL OU EM BRANCO - PERMITE NULOS
*/

/*CRIANDO TABELA VENDEDOR*/
CREATE TABLE VENDEDOR(
CODIGO INT IDENTITY PRIMARY KEY,
NOME VARCHAR(200) NOT NULL
);

/*EXCLUINDO A TABELA VENDEDOR*/
DROP TABLE VENDEDOR;

/*ADICIONANDO A COLUNA SOBRENOME A TABELA VENDEDOR*/
ALTER TABLE VENDEDOR
ADD SOBRENOME VARCHAR(200) NOT NULL ;

/*INSERINDO 5 REGISTROS NA TABELA*/
INSERT INTO VENDEDOR(NOME, SOBRENOME)
VALUES ('JO�O', 'ALVES'),('ANA', 'FLORES'),('MARIANE', 'FERREIRA'), ('SARA','MORAES'),('NETO','COSTA');

/*CONSULTANDO TODOS OS VENDEDORES INSERIDOS*/
SELECT * FROM VENDEDOR;

/* APAGANDO TODOS OS VENDEDORES INSERIDOS*/
TRUNCATE TABLE VENDEDOR

/*CRIANDO A TABELA PRODUTO*/
CREATE TABLE PRODUTO(
CODIGO INT IDENTITY PRIMARY KEY,
UNIDADE VARCHAR(200) NOT NULL,
DESCRICAO VARCHAR (200) NOT NULL,
VALOR_UNITARIO NUMERIC
);

/* ADICIONANDO UMA COLUNA NOME NA TABELA PRODUTO*/
ALTER TABLE PRODUTO
ADD NOME VARCHAR(200);

/*ALTERANDO A COLUNA NOME, ADICIONANDO O NOT NULL, PARA QUE ELA N�O RECEBA NULO*/
ALTER TABLE PRODUTO
ALTER COLUMN NOME VARCHAR(200) NOT NULL;

/* DELETANDO A COLUNA DESCRI��O NA TABELA PRODUTO*/
ALTER TABLE PRODUTO
DROP COLUMN DESCRICAO;

/*
CREATE TABLE PEDIDO(
NUMERO INT IDENTITY PRIMARY KEY,
FORMA_PGTO VARCHAR(200) NOT NULL,
FK_CODCLIENTE INT NOT NULL,
FK_CODVENDEDOR INT NOT NULL,
FOREIGN KEY (FK_CODCLIENTE ) REFERENCES CLIENTE(CODIGO) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (FK_CODVENDEDOR ) REFERENCES VENDEDOR(CODIGO) ON DELETE CASCADE ON UPDATE
CASCADE,
);
*/

/*
CREATE TABLE LISTA_PRODUTO(
FK_NUMPEDIDO INT,
FK_CODPRODUTO INT,
QUANTIDADE INT NOT NULL,
VALOR_TOTAL NUMERIC NOT NULL
FOREIGN KEY (FK_NUMPEDIDO ) REFERENCES PEDIDO(NUMERO) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (FK_CODPRODUTO ) REFERENCES PRODUTO(CODIGO) ON DELETE CASCADE ON UPDATE CASCADE,
PRIMARY KEY(FK_NUMPEDIDO, FK_CODPRODUTO)
);
DROP TABLE PEDIDO;
*/