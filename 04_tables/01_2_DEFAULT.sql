
--Proporsiona datos en las partes por default si no se le otorgan 
--notar que email se subio a 30 por que no permitia
CREATE TABLE persons7 (
  id int NOT NULL,
  name varchar(20) NOT NULL,
  age int,
  email varchar(30) DEFAULT 'correo_empresarial@gmail.com', --nos pone el correo por default 
  created datetime DEFAULT CURRENT_TIMESTAMP() ,  --- nos pone la fecha del sitema si no se le proporciona una
  UNIQUE(id),
  PRIMARY KEY(id),
  CHECK(age>=18)
);