--Salen las maximas edades de cada tabla 
SELECT MAX(age) FROM users GROUP BY age

-- Nos cuenta las edades repetidas y nos indica cuales son 
SELECT COUNT(age), age FROM users GROUP BY age

--Lo mismo de arriba pero nos lo ordena 
SELECT COUNT(age), age FROM users GROUP BY age ORDER BY age ASC;

--Lo mismo pero seleccionando solo por apellido
SELECT COUNT(age), age FROM users WHERE surname = 'perez' GROUP BY age ORDER BY age ASC;

--indicando que las edades sean mayor a x
SELECT COUNT(age), age FROM users WHERE age > 13 GROUP BY age ORDER BY age ASC;