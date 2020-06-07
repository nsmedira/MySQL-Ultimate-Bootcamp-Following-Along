import mysql.connector

mydb = mysql.connector.connect(
    host='localhost'
)

mycursor = mydb.cursor()

# grab a list of the databases on our mysql server
# mycursor.execute('SHOW DATABASES')

# print out the list of databases
# for x in mycursor:
#     print(x)

# make 'data' our active database
mycursor.execute('USE data')

# grab a list of service IDs
mycursor.execute('''
    SELECT id
    FROM services ;
''')
services = mycursor.fetchall()
services = [i[0] for i in services]

query = 'INSERT INTO serviceRates (id_service) VALUES '

for index, value in enumerate(services):
    query += '(' + str(value) + ')'
    if index + 1 < len(services):
        query += ','

# print(query)

# insert the data
mycursor.execute(query)
mydb.commit()

print(mycursor.rowcount)
