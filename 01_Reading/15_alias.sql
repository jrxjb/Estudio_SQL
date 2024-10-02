-- En la parte de arriba nos los llama con ese nombre

SELECT name AS 'primer nombre' FROM users WHERE age BETWEEN 22 AND 54;

--Un ejemplo mas complejo 
SELECT name AS 'primer nombre', init_date AS 'Fecha de inicio en programacion'  FROM users WHERE age BETWEEN 22 AND 54;