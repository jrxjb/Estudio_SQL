-- Es como una especie de tabla que se crea para consultar solo los datos 
--seleccionados en su creacion sobre otra tabla, - Se consulta igual que una tabla normal


/*En este caso la tabla creada se llama v_adult_ages y tendra en name y edad de quienes
sean mayor de edad de la tabla users*/
--Nota 
CREATE VIEW v_adult_ages AS --v_ es solo para identificar rapido que es una vista no es obligado
SELECT name,age
FROM users
WHERE age>=18;

--Para consultarla 
SELECT * FROM v_adult_ages 

--Borrar 
DROP VIEW v_adult_ages
