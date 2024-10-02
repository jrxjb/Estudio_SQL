-- Limitacion de una limitacion 
/*La función COUNT(age) cuenta el número de registros donde age no es NULL*/

/*n Este caso nos cuenta los usuarios 
con edades y solo lo muestra si cumple que el resultado de la cuenta es mayor a 6*/
SELECT COUNT(age) FROM users HAVING COUNT(age) >6