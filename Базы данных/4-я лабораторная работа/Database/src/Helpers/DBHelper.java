package Helpers;

import com.ben.Interface;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;

import static com.ben.Interface.text1;

public class DBHelper {


    public static Object[][] array = new String[][] {{ "" , "", "","" },
            { "" , "", "","" },
            { "" , "", "","" },
            { "" , "", "","" },
            { "" , "", "","" },
            { "" , "", "","" },
            { "" , "", "","" },
            { "" , "", "","" },
            { "" , "", "","" },
            { "" , "", "","" },
            { "" , "", "","" },
            { "" , "", "","" },
            { "" , "", "","" },
            { "" , "", "","" },
            { "" , "", "","" },
            { "" , "", "","" },
            { "" , "", "","" },
            { "" , "", "","" },
            { "" , "", "","" },
    };
    // Заголовки столбцов
    public static Object[] columnsHeader = new String[] {"№","Players's name", "Player's surname",
            "Players's age"};

    //Объект соединения с БД
    private Connection connection;

    //Строка подключения к БД
    private static String DB_URL = "jdbc:postgresql://localhost:5432/lab";

    //Имя пользователя и пароль для подключения
    private static String DB_USER = "postgres";
    private static String DB_PASSWORD = "123123";

    public DBHelper() {
        try {
            //Регистрируем драйвер
            Class.forName("org.postgresql.Driver");

            //Соединяемся с базой
            connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            System.out.println("Successful launch");
        } catch (ClassNotFoundException e) {
            //Сюда мы попадем, если драйвер не будет установлен
            System.out.println("Failed to load driver");
        } catch (SQLException e) {
            //Сюда мы попадем, если возникнет проблема при соединении
            System.out.println("Failed to connect to database");
        }

    }
    //Закрытие соединения
    public void closeConnection()
    {
        try {
            if (connection != null && !connection.isClosed()) {
                connection.close();
            }
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void simpleSelect() {
        //Объявляем объекты запроса и результата
        Statement statement;
        ResultSet result;
        try {
            //Создаем экземпляр запроса
            statement = connection.createStatement();

            //Выполняем запрос к БД
            result = statement.executeQuery("SELECT * FROM public.players");

            //Выполняем проход по строкам таблицы и выводим в консоль
            int i=0;
            while(result.next())
            {
               // System.out.printf("Player: %s %s\nHis age: %d\n\n",
                        array[i][0] = String.valueOf(result.getInt(1));
                        array[i][1] = result.getString(2);
                        array[i][2] = result.getString(3);
                        array[i][3] = String.valueOf(result.getInt(5));
                i+=1;
            }

            //Закрываем соединение
            statement.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void simpleInsert(String first_name, String second_name, int age) {
        //Объявляем объекты запроса и результата
        PreparedStatement preparedStatement;
        try {
            //Создаем экземпляр запроса
            preparedStatement = connection.prepareStatement("INSERT INTO players(first_name, second_name,id_teams,age) VALUES(?, ?, 1,?)");

            //Добавление параметров
            preparedStatement.setString(1, first_name);
            preparedStatement.setString(2, second_name);
            preparedStatement.setInt(3, age);

            //Выполняем запрос к БД
            preparedStatement.execute();

            //Закрываем соединение
            preparedStatement.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void simpleUpdate(String first_name, String second_name, int age,int id) {
        //Объявляем объекты запроса и результата
        PreparedStatement preparedStatement;
        try {
            //Создаем экземпляр запроса
            preparedStatement = connection.prepareStatement("UPDATE players SET first_name = ?, second_name = ?, age = ? WHERE id = " + String.valueOf(id));

            //Добавление параметров
            preparedStatement.setString(1, first_name);
            preparedStatement.setString(2, second_name);
            preparedStatement.setInt(3, age);


            //Выполняем запрос к БД
            preparedStatement.execute();

            //Закрываем соединение
            preparedStatement.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


}


