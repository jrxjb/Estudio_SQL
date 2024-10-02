/*  NOT  Que no cumple esto*/

/*ME devuelve el valor de todos los demas que no tienen este correo */
SELECT * FROM users where NOT email ='ejemplo@hotmail.com'; 

/*AND*/

/*Rotorna aquellos sin el correo jose2261@hotmail.com pero si la edad 55*/

SELECT * FROM users where NOT email = 'ejemplo@hotmail.com' AND age = 55;


/*OR*/

/*Retorna aquellos que no tienen el valor jose2261@hotmail.com y todos los que tengan 55*/

SELECT * FROM users where NOT email = 'ejemplo@hotmail.com' OR age = 55;

/*Otras opciones, se pueden mezclar para mejor busqueda*/

SELECT * FROM users where NOT email = 'ejemplo@hotmail.com' AND NOT age = 21;