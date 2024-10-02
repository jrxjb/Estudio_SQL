--Procedimiento almacenado, Son parecido a las views pero con mas funcones y mas complejidad 

--Es como una query que se guarda en favoritos 

--Para crearlo 
delimiter //

CREATE PROCEDURE p_all_users()
BEGIN
  SELECT * FROM users;
END//


-- Para eliminar 
DROP PROCEDURE +nombre


---------------De esta forma se crea una funcion que solo se llama y se le pasa el parametro que se pide 
delimiter //

CREATE PROCEDURE p_age_users(IN age_param int)
BEGIN
  SELECT * FROM users WHERE age = age_param;
END//

--Para consultarlo
CAll p_age_users(27)