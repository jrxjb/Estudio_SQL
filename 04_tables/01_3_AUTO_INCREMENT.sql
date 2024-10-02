CREATE TABLE persons8 (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(20) NOT NULL,
  age int,
  email varchar(30) DEFAULT 'correo_empresarial@gmail.com',
  created datetime DEFAULT CURRENT_TIMESTAMP() ,
  UNIQUE(id),
  PRIMARY KEY(id),
  CHECK(age>=18)
);