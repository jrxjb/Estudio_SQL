--Nos conectamos con la base que tendra la relacion  1:1

CREATE TABLE dni2(
   dni_id int AUTO_INCREMENT PRIMARY KEY UNIQUE,
   dni_numer int NOT NULL UNIQUE,
   user_id int,
   FOREIGN KEY(user_id) REFERENCES users(user_id) --donde users es la otra tabla
   );


--Relacionar Dos columnas de diferentes tablas  1:N
   --Importanterevisar que sean de la misma variable 
ALTER TABLE users 
ADD FOREIGN KEY (company_id) REFERENCES companies(company_id);


--Relacion N:N  secreo primero la tabla lenguages con usrio lenguage_id igual con user_id
CREATE TABLE users_lenguages(
users_lenguage_id int AUTO_INCREMENT PRIMARY KEY,
user_id int,
lenguage_id int,
FOREIGN KEY(user_id) REFERENCES users(user_id),
FOREIGN KEY(lenguage_id) REFERENCES lenguages(lenguage_id),
UNIQUE (user_id, lenguage_id)
   );



---------------------------------------------------------------------------------------------------------

--insertando valores en una tabla n:n  donde cada numero es un identificador de otra tabla ej
--ej un usuario y el lenguaje que maneja 
INSERT INTO users_lenguages(user_id,lenguage_id) VALUES (1,1);
INSERT INTO users_lenguages(user_id,lenguage_id) VALUES (1,4)


--Auto referencia 