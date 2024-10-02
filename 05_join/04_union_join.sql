--Se puede encontrar como
FULL JOIN o como RIGHT OUTER JOIN

--Se coloca asi 
SELECT * FROM users
FULL JOIN dni2


--Une todo pero como una lista osea termina una y luego pega la otra  
SELECT user_id,name FROM users
UNION ALL
SELECT user_id, dni_numer from dni2 

--Es bastante complejo se puede leer la documentocion del tema 
SELECT users.user_id AS u_user_id, dni2.user_id AS d_user_id
FROM users
LEFT JOIN dni2
ON users.user_id=dni2.dni_id
UNION 
SELECT users.user_id AS user_id , dni2.dni_id AS d_dni_id
FROM users 
RIGHT JOIN dni2 
ON users.user_id= dni2.user_id
SELECT users.user_id AS u_user_id, dni2.user_id AS d_user_id
FROM users
LEFT JOIN dni2
ON users.user_id=dni2.dni_id
UNION 
SELECT users.user_id AS user_id , dni2.dni_id AS d_dni_id
FROM users 
RIGHT JOIN dni2 
ON users.user_id= dni2.user_id
