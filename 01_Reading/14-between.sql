-- Para consultrar entre un rango de edades 
-- Nos indica todos los que estan entre esas edades 
SELECT * FROM users WHERE age BETWEEN 22 AND 54;

--Para que salgan las columnas name y init_date que complen con esas edades
SELECT name, init_date  FROM users WHERE age BETWEEN 22 AND 54;

--Tambien puede ser 1 o mas campos 
SELECT name  FROM users WHERE age BETWEEN 22 AND 54;