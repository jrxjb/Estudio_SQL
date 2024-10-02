-- Nos refleja todo pero con Un nombre para cada condicion 

--Nos muestra todo pero a los menosres de 17 dice menor de edad y los mayores mayor de edad
SELECT *,
CASE
 WHEN age > 17 THEN 'Es mayor de edad'
 ELSE 'Es menor de edad'
END
FROM users;

--Muestra un 0 o 1 repectivamente por u condicion 
SELECT *,
CASE
 WHEN age > 17 THEN TRUE
 ELSE FALSE
END
FROM users;

--Con la misma logica 
SELECT *,
CASE
 WHEN age > 18 THEN 'Es menor de edad'
 WHEN age = 18 THEN 'Primer año de mayoria de edad'
 ELSE 'Es mayor de edad'
END AS '¿Es mayor de edad?'
FROM users;