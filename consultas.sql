-- 2.b Definir uma visão útil a seu universo de discurso.
-- Desenvolver duas consultas igualmente úteis que utilizem esta visão
---

-- Visões
CREATE OR REPLACE VIEW app_with_item AS
	SELECT *
	FROM app
	JOIN item USING (id);

CREATE OR REPLACE VIEW book_with_item AS
	SELECT *
	FROM book
	JOIN item USING (id);

CREATE OR REPLACE VIEW movie_with_item AS
	SELECT *
	FROM movie
	JOIN item USING (id);

CREATE OR REPLACE VIEW album_with_item AS
	SELECT *
	FROM album
	JOIN item USING (id);

CREATE OR REPLACE VIEW full_item AS
	SELECT *
	FROM item
	LEFT JOIN app USING (id)
	LEFT JOIN book USING (id)
	LEFT JOIN movie USING (id)
	LEFT JOIN album USING (id);
---

-- Consultas para visões
-- Nome e função dos membros de filmes que estejam em em promoção
SELECT movie_cast.cast_name, "function"
FROM movie_with_item item
JOIN movie_cast ON (item.id = movie_cast.movie_id)
WHERE is_promotion = true;

-- Nome e nome do artista de todos os álbuns com músicas com mais do que 3 minutos de duração
SELECT "name" album_name, artist_name
FROM album_with_item item
WHERE item.id IN (
	SELECT album_id
	FROM track
	WHERE duration > 3 * 60
);

-- 2.a Definir um conjunto de 6 consultas uteis aos seu UdD, sendo que cada uma delas deve envolver no mínimo 3 tabelas.
-- Nome, email e quantidade de downloads por usuário
SELECT u.name, email, COUNT(DISTINCT item_id) downloads_count
FROM "User" u
LEFT JOIN download ON (download.user_email = u.email)
GROUP BY email, u.name;

-- Nome dos usuários que já baixaram um filme que Jason Momoa participou
SELECT u.name
FROM "User" u
JOIN download ON (download.user_email = u.email)
JOIN movie_with_item item ON (item.id = download.item_id)
JOIN movie_cast ON (movie_cast.movie_id = item.id)
WHERE cast_name = 'Jason Momoa';

-- Nome de todos os usuários que possuem um livro escrito em Português na Wishlist, assim como a data da adição e o nome do livro
SELECT u.name user_name, date, item.name book_name
FROM "User" u
JOIN wishlist ON (wishlist.user_email = u.email)
JOIN book_with_item item ON (item.id = wishlist.item_id)
WHERE language_name = 'Português';

-- Preenchendo requisitos:
---

-- a. NECESSITAR ser respondida com a cláusula group by
-- Quantidade de downloads por desenvolvedora de aplicativo
SELECT developer.name, COUNT(*)
FROM download
JOIN app_with_item item ON (download.item_id = item.id)
JOIN developer ON (item.developer_email = developer.email)
GROUP BY id, developer.name;

-- b. NECESSITAR ser respondida com subconsulta
-- Nome e autor dos albuns que foram mais baixados do que a média de downloads
SELECT name album_name, artist_name
FROM album_with_item item
JOIN download ON (download.item_id = item.id)
GROUP BY item.id, name, artist_name
HAVING COUNT(*) >= (
	SELECT AVG(count)
	FROM (
		SELECT COUNT(*) count
		FROM download
		JOIN album_with_item item ON (download.item_id = item.id)
		GROUP BY item.id
	) download_count
);


-- c. NECESSITAR do operador NOT EXISTS para responder questões do tipo TODOS ou NENHUM
-- Email de todas as pessoas que não baixaram NENHUM aplicativo baixado por rbaudibert@inf.ufrgs.br
SELECT email
FROM "User" u
WHERE NOT EXISTS (
	SELECT *
	FROM download
	WHERE (u.email = download.user_email)
		AND item_id IN (
			SELECT item_id
			FROM download
			WHERE (user_email = 'rbaudibert@inf.ufrgs.br')
	)
);
