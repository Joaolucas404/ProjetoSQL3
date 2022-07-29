-- DDL
-- CREATE
-- ALTER
-- DROP

CREATE DATABASE db_ecomerce_dotnet;

USE db_ecomerce_dotnet;
 
 CREATE TABLE tb_usuarios(
 Id INT NOT NULL PRIMARY KEY IDENTITY,
 Nome VARCHAR(100) NOT NULL,
 Usuario VARCHAR(255) NOT NULL,
 Senha VARCHAR (255) NOT NULL,
 Documento VARCHAR (255) NULL,
 );
   CREATE TABLE tb_produtos (
 Id INT NOT NULL PRIMARY KEY IDENTITY,
 Descricao VARCHAR(255)NOT NULL,
 Foto VARCHAR (255)NOT NULL,
 Valor VARCHAR(100)NOT NULL,
 Estoque VARCHAR(100)NOT NULL,
 Produto VARCHAR (255)NOT NULL,
 Categoria VARCHAR(100)NOT NULL,
 );
  CREATE TABLE tb_compras(
 FK_usuario INT NOT NULL,
 FK_produto INT NOT NULL,
 DataHora DATE NOT NUll,
 FOREIGN KEY (FK_usuario) REFERENCES tb_usuarios (Id),
 FOREIGN KEY (FK_produto) REFERENCES tb_produtos (Id),
 );
