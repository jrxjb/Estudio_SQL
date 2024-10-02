
SELECT * FROM users where email LIKE 'jose%'; /* de esta manera busca conincidencias con las que estan
                                              antes del @ */

SELECT * FROM users where email LIKE '%hotmail.com'; /*Las que estan despues del @    */                                         

SELECT * FROM users where email LIKE '%61%';   /* De esta manera es sin impotar el orden*/

