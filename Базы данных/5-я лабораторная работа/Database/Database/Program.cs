using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using Mono.Security;
using Npgsql;


namespace Database
{

    public class NpgsqlUserManual
    {
        public static void Conect()
        {
            // Сведения базы данных должен соответствовать определенному формату
            // localhost - адрес БД, 5432 - порт БД, lab_db - имя БД    

            string sql = "Host=localhost;Username=postgres;Database=lab;Port=5432;Password=123123";

            // Установка соединения с БД
            NpgsqlConnection conn = new NpgsqlConnection(sql);

                conn.Open();

            // Тут можно делать запросы, используя соединение
            // Всегда соединение должно быть в итоге закрыто!

            conn.Close();
        }


    }




    static class Program
    {
        /// <summary>
        /// Главная точка входа для приложения.
        /// </summary>
        [STAThread]
        static void Main()
        {
            // NpgsqlUserManual.Conect();
            

            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new Form1());
        }
    }

    
}


