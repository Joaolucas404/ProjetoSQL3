USE db_redesocial;

SELECT * FROM tb_usuarios;
SELECT * FROM tb_grupos;
SELECT * FROM tb_postagens;
SELECT * FROM tb_inscritos;

INSERT INTO tb_usuarios
VALUES('Cassio Ramos', 'rcassio12', 'mundi2012', 'Url_Foto');

INSERT INTO tb_grupos
VALUES('Corinthinans', 'Campeão do Mundo 2012', 'Url_Foto', 1);

INSERT INTO tb_postagens
VALUES('Cassio', 'Cassio melhor goleiro no mundial de 2012', 'Url_foto', '2012-12-16 13:10', 1, 1);

INSERT INTO tb_inscritos
VALUES(1, 1, '2022-06-26 15:20');

SELECT * FROM tb_usuarios
WHERE Nome LIKE '%Cassio%';

SELECT * FROM tb_grupos
WHERE Descrição LIKE '%Mundo%';

SELECT * FROM tb_postagens
WHERE Titulo LIKE '%Cassio%';

SELECT * FROM tb_usuarios
FULL JOIN tb_postagens
ON tb_usuarios.Id = tb_postagens.Id

SELECT COUNT(usuario) AS QtdeUsuarioRegistrado FROM tb_usuarios;