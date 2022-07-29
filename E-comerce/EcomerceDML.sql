USE db_ecomerce_dotnet;

SELECT * FROM tb_produtos;
SELECT * FROM tb_usuarios;
SELECT * FROM compras;

INSERT INTO tb_produtos
VALUES('Cadeira Gamer', 'Url_foto', 1799.00, 77, 'Cadeira Gamer Dx Racer', 'Cadeiras'),
('Monitor Alienware', 'Url_foto', 3199.90, 30, 'Monitor Gamer Alienware 240Hz', 'Monitores'),
('Mousepad HyperX', 'Url_foto', 169.90, 100,'Mousepad Speed HyperX (900 x 420mm)', 'Perifericos');

INSERT INTO tb_usuarios
VALUES('Joao Lucas', 'Juaoolucas', '1234', '123.456.789.00'),
('Gusttavo Lima', 'Embaixador', '1234', '123.456.789.00'),
('Luan Santana', 'LuanSantana', '1234', '123.456.789.00');

INSERT INTO tb_compras
VALUES(1, 3, '2022-07-28 13:00'),
(2, 4, '2018-07-27 14:05'),
(3, 5, '2020-07-25 16:00');

SELECT * FROM tb_produtos
WHERE Produto LIKE '%Alienware%'

SELECT * FROM tb_usuarios
WHERE Usuario LIKE 'Embaixador'

SELECT p.Id, p.Produto, u.Id, u.Nome
FROM tb_produtos AS p
INNER JOIN  tb_usuarios u
ON p.Id = u.Id

SELECT COUNT(estoque) AS QtdeProdutoRegistrado FROM tb_produtos;
SELECT COUNT(Usuario) AS QtdeUsuarioRegistrado FROM tb_usuarios;