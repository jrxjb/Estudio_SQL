

--Limita que no se pueda crear si tiene menos de 18
CREATE TABLE persons5 (
  id int NOT NULL,
  name varchar(20) NOT NULL,
  age int,
  email varchar(20),
  created datetime,
  UNIQUE(id),
  PRIMARY KEY(id),
  CHECK(age>=18)
);