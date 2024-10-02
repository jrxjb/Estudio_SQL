import mysql.connector 

config ={

"host":"ip",
"port":"puerto",
"database":"nombre de la base",
"user":"nombre de usuario",
"password":"clave"
}
#INSERT INTO users(user_id,name,surname,email) VALUES (15,'Stephenie2', 'Ramona2','steramo2@gmai.com')
connection = mysql.connector.connect(**config)
cursor =connection.cursor()

query="SELECT * FROM users"
cursor.execute(query)
result=cursor.fetchall()

for row in result:
    print(row)

cursor.close()
connection.close()