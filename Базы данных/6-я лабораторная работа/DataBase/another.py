from multiprocessing import connection

import psycopg2
from psycopg2 import Error   #для обработки исключений
from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT



def openСonnection():
    try:
        connection = psycopg2.connect(user="postgres",
                                        password="galinka220",
                                        host="localhost",
                                        port="5432",
                                      database="lab")
     #   connection.set_isolation_level(ISOLATION_LEVEL_AUTOCOMMIT)
        # Курсор для выполнения операций с базой данных
        cursor = connection.cursor()
        cursor.execute("SELECT id,first_name,second_name,age FROM public.players")
        import database
        database.lst = cursor.fetchall()

        # Распечатать сведения о PostgreSQL
        print("Информация о сервере PostgreSQL")
        print(connection.get_dsn_parameters(), "\n")
    except (Exception, Error) as error:
        print("Ошибка при работе с PostgreSQL", error)

def add(self):
    connection = psycopg2.connect(user="postgres",
                                  password="123123",
                                  host="localhost",
                                  port="5432",
                                  database="lab")
    #   connection.set_isolation_level(ISOLATION_LEVEL_AUTOCOMMIT)
    # Курсор для выполнения операций с базой данных
    cursor = connection.cursor()
    import database

    record_to_insert = (str(database.btn5.get()),str(database.btn4.get()),int(database.btn3.get()))
    cursor.execute("INSERT INTO players(first_name, second_name,id_teams,age) VALUES(%s, %s, 1,%s)",record_to_insert)
    cursor.execute("SELECT id,first_name,second_name,age FROM public.players")
    database.lst = cursor.fetchall()

def insertGroup(self, name, number_of_students):
    self._connection.query("INSERT INTO group(name, number_of_students) VALUES(%s, %s)" % (name,number_of_students))

def change():
    print()
