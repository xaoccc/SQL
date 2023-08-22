import psycopg2

con = psycopg2.connect(
   database="babysitters",
   user="postgres",
   password="postgres",
   host="localhost",
   port= '5432'
   )

cur = con.cursor()
emp_data = []

for _ in range(1):
   first_name = input()
   middle_name = input()
   last_name = input()
   age = int(input())
   rating = int(input())
   children = int(input())
   gender = input()
   phone_number = input()
   city = input()
   neighbourhood = input()
   emp_data.append((first_name, middle_name, last_name, age, rating, children, gender, phone_number, city, neighbourhood))


curs_obj = con.cursor()
query = "INSERT INTO babysitters(first_name, middle_name, last_name, age, rating, children, gender, phone_number, city, neighbourhood) VALUES(%s, %s, %s, %s, %s, %s, %s, %s, %s, %s);"

cur.executemany(query, emp_data)

con.commit()

curs_obj.close()
con.close()