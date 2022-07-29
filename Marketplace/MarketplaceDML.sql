USE db_marketplace

SELECT * FROM tb_usuario
SELECT * FROM tb_categorias
SELECT * FROM tb_produtos
SELECT * FROM tb_compras

INSERT INTO tb_usuario
VALUES('Joao Lucas', 'Juaoolucas', '1234', 'Url_foto'),
('Gusttavo Lima', 'Embaixador', '1234', 'Url_foto'),
('Luan Santana', 'LuanSantana', '1234', 'Url_foto');

INSERT INTO tb_categorias
VALUES('Produtos Gamers'),
('Roupas'),
('Acessorios')

INSERT INTO tb_produtos
VALUES('Monitor Gamer', 'Monitor Alienware 240Hz','Url_foto',3199.90, 1, 1),
('Camisas de Time', 'Camisa Corinthians Nike 21/22','Url_foto', 249.90, 2, 2),
('Pulseira', 'Pulseira Ouro Cartie','Url_foto',31199.99, 3, 3)

INSERT INTO tb_compras
VALUES(1, 2, '2022-03-25 10:10'),
(3, 4, '2018-05-14 10:10'),
(5, 6, '2020-07-30 10:10')

SELECT * FROM tb_usuario
WHERE Usuario LIKE 'Juaoolucas'

SELECT * FROM tb_categorias
WHERE Categoria LIKE 'Acessorios'

SELECT * FROM tb_produtos
WHERE Valor BETWEEN 0 AND 300

SELECT * FROM tb_usuario
LEFT JOIN tb_categorias
ON tb_usuario.Id = tb_categorias.Id

SELECT COUNT(Nome) AS QtdeNomeRegistrado FROM tb_usuario;