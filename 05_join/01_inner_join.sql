--trae las dos tablas pero sin orden osea repite 
SELECT * FROM users
INNER JOIN dni2

--Los trae ordenados      
--por logica esta funcion solo traera a los usuarios q cumplen que tienen los dos campos solicitados llenos
SELECT * FROM users
INNER JOIN dni2
ON users.user_id =dni2.user_id;

--Sirve igual casi siempre en todas las bases de datos 
SELECT * FROM users
JOIN dni2
ON users.user_id =dni2.user_id;

--Uniendo conocimientos trea las tablas pero con orden
SELECT * FROM users
JOIN dni2
ON users.user_id =dni2.user_id
ORDER BY age DESC;

--Escogiendo campos especificos y ordenados 
SELECT name,dni_numer FROM users
JOIN dni2
ON users.user_id =dni2.user_id
ORDER BY age DESC;


----------------------------------------JOIN DE 3 TABLAS----------------------------------------------------

SELECT * 
FROM users_lenguages
JOIN users
ON users_lenguages.user_id = users.user_id
JOIN lenguages
ON users_lenguages.lenguage_id = lenguages.lenguage_id

--Con los campos especificos
SELECT users.name, users.surname,users.email,users.init_date,lenguages.name
FROM users_lenguages
JOIN users
ON users_lenguages.user_id = users.user_id
JOIN lenguages
ON users_lenguages.lenguage_id = lenguages.lenguage_id

--Solo para demostrar que se puede hacer de otra manera
SELECT users.name, users.surname,users.email,users.init_date,lenguages.name
FROM users
JOIN users_lenguages
ON users_lenguages.user_id = users.user_id
JOIN lenguages
ON users_lenguages.lenguage_id = lenguages.lenguage_id