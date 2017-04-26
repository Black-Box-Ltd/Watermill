using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Media.Animation;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;

namespace WaterMillProject
{
    public partial class MainWindow : Window
    { 
        public MainWindow()
        {
            InitializeComponent();
        }

        public void btn_Close_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        public void btn_Minimize_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }

        public void btn_Login_Click(object sender, RoutedEventArgs e)
        {

            int valid = 0;

            Database DBConnect = new Database();
            DBConnect.DBConnect();
            DBConnect.OpenConnection();
            string userName = txt_Username.Text;
            string passWord = pw_Password.Password;
            MySqlCommand cmd = new MySqlCommand("SELECT Count(*) FROM users WHERE username = @id and passwords = @pass", DBConnect.connection);
            cmd.Connection = DBConnect.connection;
            cmd.Parameters.AddWithValue("id", userName);
            cmd.Parameters.AddWithValue("pass", passWord);
            MySqlDataReader r = cmd.ExecuteReader();
            

            if (string.IsNullOrWhiteSpace(txt_Username.Text) || string.IsNullOrWhiteSpace(pw_Password.Password))
            {
                MessageBox.Show("Please fill in the login details.");
            } 
            else if (r.HasRows)
            {
                valid = 1;
            }

            DBConnect.CloseConnection();

            
            if (valid == 1)
            {
                MainResourceWindow PrimaryWindow = new MainResourceWindow(userName);
                this.Close();
                PrimaryWindow.Show();
            }
            else
            {
                MessageBox.Show("Invalid Login.");
            }
        }
    }
}