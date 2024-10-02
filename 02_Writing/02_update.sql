-- SIEMPRE USAR EL WHERE  sino se cambiaran todos los campos y dañarias la base de datos

--Se actualizala edad de el usuario 12 a 04
UPDATE users SET age ='04' WHERE user_id = 12

--Actualizala edad y la fecha (acepto edad apesar de ser un campo int y se utilizo un string)
UPDATE users SET age ='15',init_date='2023-10-02' WHERE user_id = 4

--Las bases de datos pueden entender que edad era un número aqui, ya que arriba se puso como string
UPDATE users SET age =60,init_date='2023-10-05' WHERE user_id = 10

