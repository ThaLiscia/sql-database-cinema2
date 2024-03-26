-- 12. Create a "Bill Murray Collection" in the collection table. For the movies that have Bill Murray in them, set their collection ID to the "Bill Murray Collection". (1 row, 6 rows)
BEGIN TRANSACTION;

INSERT INTO collection (collection_name) VALUES ('Bill Murray Collection');


UPDATE movie_actor SET collection_id = null WHERE 
(movie_id = 399174 AND actor_id = 1532) OR
(movie_id = 10315 AND actor_id = 1532) OR
(movie_id = 120467 AND actor_id = 1532) OR
(movie_id = 83666 AND actor_id = 1532) OR
(movie_id = 137 AND actor_id = 1532) OR
(movie_id = 10433 AND actor_id = 1532);


ROLLBACK;

--SELECT * from person WHERE person_name = 'Bill Murray'
--SELECT * from movie_actor WHERE actor_id = '1532'
--SELECT * FROM collection