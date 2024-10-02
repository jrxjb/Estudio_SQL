import mysql.connector 

def print_user(user):     
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

    query="SELECT * FROM users  WHERE name ='" + user +"';"
    print(query)
    cursor.execute(query)
    result=cursor.fetchall()

    for row in result:
        print(row)

    cursor.close()
    connection.close()

print_user("jose")
#hay que tener cuidado con los hacker por lo siguiente si alguien en lugar de solo poner nombre
# hace lo siguiente 
print_user("'; UPDATE users SET age='19' WHERE user_id = 5;-- ")

print("nivel_2")

#para evitar hackeos

def print_user2(user):     
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

    query="SELECT * FROM users  WHERE name =%s;"
    print(query)
    cursor.execute(query,(user,)) #aqui el usuario que se pasara como string 
    result=cursor.fetchall()

    for row in result:
        print(row)

    cursor.close()
    connection.close()

print_user2("jose")

#Al intentar lo siguiente no llega la informacion 
print_user2("'; UPDATE users SET age='19' WHERE user_id = 5;-- ")


