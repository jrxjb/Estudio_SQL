--Es como poner algo que revice las tablas afectadas y las colmnas para saber cuando
--cuando hubo un cambio y dependiendo de la logica guardar ese cambio 


--BEFORE/AFTER INSERT/UPDATE/DELETE EJEMPLO DE LAS OPCIONES
--nota tg_ es solo para identificar rapido que es un TRIGGER pero no es obligatorio
DELIMITER //

CREATE TRIGGER tg_email
AFTER UPDATE ON users
FOR EACH ROW 
BEGIN 
   IF OLD.email <> NEW.email THEN
     INSERT INTO email_history (user_id,email)
     VALUES(OLD.user_id, OLD.email);
   END IF;
END;//

DELIMITER ;

--ejemplo para meter un dato y se actualice el trigger
--luego se consulta la tabla y se ve el cambio que tomo la actualizacion(tabla email:history)

UPDATE users SET email='ejemplo@gmail.com' WHERE user_id = 3


-- Para borrarlo seria,  
DROP TRIGGER tg_email