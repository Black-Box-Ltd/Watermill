using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Windows;
using MySql.Data.MySqlClient;

namespace WaterMillProject
{
    class Database
    {
        public MySqlConnection connection;
        private String server = "ucp-i-tas01";
        private String database = "joogardendb";
        private String uid = "joo";
        private String password = "643";

        public void DBConnect()
        {
            Initialize();
        }

        private void Initialize()
        {
            MySqlConnectionStringBuilder builder = new MySqlConnectionStringBuilder();
            builder.Server = server;
            builder.UserID = uid;
            builder.Password = password;
            builder.Database = database;

            String connectionString = builder.ToString();
            builder = null;

            connection = new MySqlConnection(connectionString);
        }


        public bool OpenConnection()
        {
            try
            {
                connection.Open();
                return true;
            }
            catch (MySqlException ex)
            {

                switch (ex.Number)
                {
                    case 0:
                        MessageBox.Show("Cannot connect to server.  Contact administrator");
                        break;

                    case 1045:
                        MessageBox.Show("Invalid username/password, please try again");
                        break;

                    default:
                        MessageBox.Show("Cannot connect to server.  Contact administrator");
                        break;
                }
                return false;
            }
        }

        public bool CloseConnection()
        {
            try
            {
                connection.Close();
                return true;
            }
            catch (MySqlException ex)
            {
                MessageBox.Show(ex.Message);
                return false;
            }

        }
    }

}
