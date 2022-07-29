-- DDL
-- CREATE
-- ALTER
-- DROP

CREATE DATABASE db_marketplace;
 
 USE db_marketplace; 

 CREATE TABLE tb_usuario (
 Id INT NOT NULL PRIMARY KEY IDENTITY,
 Nome VARCHAR (100) NOT NULL,
 Usuario VARCHAR (100) NOT NULL,
 Senha VARCHAR(255) NOT NULL,
 Foto VARCHAR(100) NOT NULL,
 );
CREATE TABLE tb_categorias (
Id INT NOT NULL PRIMARY KEY IDENTITY,
Categoria VARCHAR (255) NOT NULL
);
CREATE TABLE tb_produtos (
 Id INT NOT NULL PRIMARY KEY IDENTITY,
 Produto VARCHAR(100)NOT NULL,
 Descricao VARCHAR(255)NOT NULL,
 Foto VARCHAR (255)NOT NULL,
 Valor FLOAT NOT NULL,
 FK_criador INT NOT NULL,
 FK_categoria INT NOT NULL,
 FOREIGN KEY (FK_categoria) REFERENCES tb_categorias (Id),
 FOREIGN KEY (FK_criador) REFERENCES tb_categorias (Id)
 );
   CREATE TABLE tb_compras (
 FK_usuario INT NOT NULL,
 FK_produto INT NOT NULL,
 DaraHora DATE NOT NULL,
 FOREIGN KEY (FK_usuario) REFERENCES tb_usuario (Id),
 FOREIGN KEY (FK_produto) REFERENCES tb_produtos (Id)
 );