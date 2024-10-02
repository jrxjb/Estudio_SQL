import mysql.connector 

def print_user(user):     
    config ={
    "host":"host de la base remota",
    "port":"puerto",
    "database":"nombre de la base",
    "user":"usuario",
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

print_user("carla")