-- 9. Remove "Memento" from the movie table
-- You'll have to remove data from two other tables before you can remove it (13 rows, 2 rows, 1 row)

--SELECT * FROM movie WHERE title = 'Memento'
--SELECT * FROM movie_actor WHERE movie_id = '77'
--SELECT * FROM movie_genre WHERE movie_id = '77'

--BEGIN TRANSACTION;

DELETE FROM movie_actor WHERE movie_id = '77';
DELETE FROM movie_genre WHERE movie_id = '77';
DELETE FROM movie WHERE title = 'Memento';

--ROLLBACK;