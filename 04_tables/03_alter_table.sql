--Para agregar una columna 
ALTER TABLE persons8
ADD surname VARCHAR(150); 

--RENAME COLUMN

ALTER TABLE persons8
RENAME COLUMN surname TO Apellido;


-- Cambiar el campo de la variable de una Columna 
ALTER TABLE persons8
MODIFY COLUMN Apellido VARCHAR(250);

--Borrar una conlumna 
ALTER TABLE persons8
DROP COLUMN Apellido;