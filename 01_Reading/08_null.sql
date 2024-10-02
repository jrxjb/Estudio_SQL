-- Donde el correo es nulo 
SELECT * FROM users WHERE email is NULL; 

--Donde el correo no es nulo 
SELECT * FROM users WHERE email IS NOT NULL; 

--Haciendo combinaciones
SELECT * FROM users WHERE email IS NOT NULL AND age =55 ; 

--Cambiar nombre de los que aparecen nulos 
SELECT name,IfNULL(surname,'Vacio'), IfNULL(age,0) FROM users 