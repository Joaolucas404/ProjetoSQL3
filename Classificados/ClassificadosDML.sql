USE db_classificados

SELECT * FROM tb_usuario 
SELECT * FROM tb_anuncios

INSERT INTO tb_usuario
VALUES(01, 'Jonny', 'JonnyTest', '1234', 'Fis',' Url_Jonny'),
(02, 'Matuê', 'Tuezin085', '12345', 'PJ', 'Url_matue'),
(03, 'Teto', 'Tetinho', '6789', 'PJ', 'Url_Teto')

INSERT INTO tb_anuncios
VALUES(1, 'Programador .Net', 'Programador Back-End .Net', '(12) 12345-1234', 'Url_Jonny', '2020-08-12', 1),
(2, 'Vendedor','Gerente de Vendas','(12) 12485-0083','Url_teto','2020-08-12', 2),
(3, 'Dev .Net','Desenvolvedors Front-End','(12)3456-7890','Url_Teto','2020-08-12', 3)

SELECT * FROM tb_usuario
WHERE Pessoa = 'PJ'

SELECT * FROM tb_anuncios
WHERE Descricao LIKE '%End%';

SELECT * FROM tb_anuncios
WHERE Descricao LIKE '%End%';

SELECT u.Id, u.Nome, a.Id, a.Titulo 
FROM tb_usuarios AS u
RIGHT JOIN  tb_anuncios a
ON u.Id = a.Id

SELECT COUNT(usuario) AS QtdeUsuarioRegistrado FROM tb_usuarios;
