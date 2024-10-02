 SELECT * FROM users ORDER BY age;        /* ordenar por edad*/                    

 SELECT * FROM users ORDER BY age DESC; /* muestra el resultado desentende de mayor a menor */


 SELECT * FROM users ORDER BY age ASC;  /* muestra el resultado ascentende de menor a mayor */


/* muestra resultados de age en todos los que tengan ese correo */

 SELECT * FROM users WHERE email = 'ejemplo@hotmail.com' ORDER BY age ASC; 

/* Algo un poco mas util seria este, filtra las edades por fecha que 
en este caso son fechas de estudio*/
 SELECT * FROM users WHERE age = 27 ORDER BY init_date ASC;