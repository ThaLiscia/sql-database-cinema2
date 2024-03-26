-- 1. Add a new person to the person table with the name "Lisa Byway" with the birthday of 4/15/1984 (1 row)
--BEGIN TRANSACTION;

INSERT INTO person(person_name, birthday)
VALUES ('Lisa Byway', '1984/4/15');

--ROLLBACK;
--the date could be an issue if test fails in techelevator