CREATE TABLE persons (
  id int,
  name varchar(20),
  age int,
  email varchar(20),
  created date
);

------- CON RESTRICCIÓN NO NULL 
CREATE TABLE persons2 (
  id int NOT NULL,
  name varchar(20) NOT NULL,
  age int,
  email varchar(20),
  created date                -- con datetime dice los segundos 
);

--Con un campo único 
CREATE TABLE persons3 (
  id int NOT NULL,
  name varchar(20) NOT NULL,
  age int,
  email varchar(20),
  created datetime,
  UNIQUE(id)
);

--Con clave primaria (Sirve para identificarse con otras bases de datos)
CREATE TABLE persons4 (
  id int NOT NULL,
  name varchar(20) NOT NULL,
  age int,
  email varchar(20),
  created datetime,
  UNIQUE(id),
  PRIMARY KEY(id)
);

--Restricción check
