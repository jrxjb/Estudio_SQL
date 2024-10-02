
/* Trae los primeros 3 de la lista*/
SELECT * FROM users LIMIT 3; 

/* ALgo mas complejo */
SELECT * FROM users WHERE NOT age = 27 AND NOT surname = 'Perez'  LIMIT 2;