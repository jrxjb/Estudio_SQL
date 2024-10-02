-- se suele usar la abreviatura idx_

--creamos un indice en name de la tabla users
CREATE INDEX idx_name ON users(name)

--Para hacerlo unico 
CREATE UNIQUE INDEX idx_name ON users(name)

--Para 2 campos 
CREATE UNIQUE INDEX idx_name ON users(name)

--Para borrarlo 
DROP INDEX idx_name ON users