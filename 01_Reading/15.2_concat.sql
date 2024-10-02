-- Aparecen los dos campos PERO fusionados 

SELECT CONCAT(name,surname) FROM users 

--Fusiona los campos pero se deja un espacio en medio 
SELECT CONCAT(name,' ',surname,' ',init_date) FROM users 

--Usando la logica de arriba se puede añadir palabras y espacios para que sea mas comodo 
SELECT CONCAT('Nombre: ',name,' Apellido: ',surname) FROM users 

-- De esta manera salen los mismos datos pero la tabla queda renombrada 
SELECT CONCAT('Nombre: ',name ,' Apellido: ',surname) AS 'Nombre completo' FROM users; 