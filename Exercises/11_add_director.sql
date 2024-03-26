-- 11. Hollywood is remaking the classic movie "The Blob" and doesn't have a director yet. Add yourself to the person table, and assign yourself as the director of "The Blob" (the movie is already in the movie table). (1 record each)

--BEGIN TRANSACTION;

INSERT INTO person (person_name, birthday) 
VALUES ('ThaLiscia Rankins', '1996-01-15');

UPDATE movie SET director_id = null WHERE title = 'The Blob';
--ROLLBACK;
--SELECT * FROM movie WHERE title = 'The Blob'