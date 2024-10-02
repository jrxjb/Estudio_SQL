import mysql.connector

mydb = mysql.connector.connect(
  host="Dirección",
  user="usuario",
  passwd="clave",
  database="nombre de la base de dato"    
)
#ejemplo nombre de la base de dato hello_mysql_2
mycursor = mydb.cursor()

sql = "INSERT INTO users (name, age) VALUES (%s, %s) "
a=input()
b=input()

val = (a, b)
mycursor.execute(sql, val)

mydb.commit()

print(mycursor.rowcount, "registro insertado")

#6:27