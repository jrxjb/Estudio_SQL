
--------------------Trae las dos tablas completas asi no cumplan con que no tenen los campos llenos
SELECT * FROM users 
LEFT JOIN dni2
On dni2.user_id = users.user_id


SELECT name,dni_numer FROM users 
LEFT JOIN dni2
ON dni2.user_id = users.user_id

SELECT name,dni_numer FROM dni2
LEFT JOIN users
ON dni2.user_id = users.user_id

SELECT * FROM dni2
LEFT JOIN users
ON dni2.user_id = users.user_id

-- N:N

SELECT * 
FROM users_lenguages
LEFT JOIN users
ON users_lenguages.user_id = users.user_id
LEFT JOIN lenguages
ON users_lenguages.lenguage_id = lenguages.lenguage_id