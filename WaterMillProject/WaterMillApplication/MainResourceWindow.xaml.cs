using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
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
    public partial class MainResourceWindow : Window
    {
        public MainResourceWindow(string username)
        {
            InitializeComponent();
            _NavigationFrame.NavigationService.Navigate(new Uri("Pages/Home.xaml", UriKind.Relative));

            int valid = 0;

            Database DBConnect = new Database();
            DBConnect.DBConnect();
            DBConnect.OpenConnection();
            string userName = username;
            MySqlCommand cmd = new MySqlCommand("SELECT firstName, lastName FROM users WHERE username = @id", DBConnect.connection);
            cmd.Connection = DBConnect.connection;
            cmd.Parameters.AddWithValue("id", userName);
            MySqlDataReader r = cmd.ExecuteReader();
            r.Read();
            txt_userName.Text = r.GetString("firstName") + " " + r.GetString("lastName") ;
        }

        public void btn_MenuHide_Click(object sender, RoutedEventArgs e)
        {
            ShowHideMenu("sb_HideMenu", btn_MenuHide, btn_MenuShow, pnl_Menu);
        }

        public void btn_MenuShow_Click(object sender, RoutedEventArgs e)
        {
            ShowHideMenu("sb_ShowMenu", btn_MenuHide, btn_MenuShow, pnl_Menu);
        }

        public void ShowHideMenu(string Storyboard, Button btnHide, Button btnShow, StackPanel pnl)
        {
            Storyboard sb = Resources[Storyboard] as Storyboard;
            sb.Begin(pnl);

            if (Storyboard.Contains("Show"))
            {
                btnHide.Visibility = Visibility.Visible;
                btnShow.Visibility = Visibility.Hidden;
            }
            else if (Storyboard.Contains("Hide"))
            {
                btnHide.Visibility = Visibility.Hidden;
                btnShow.Visibility = Visibility.Visible;
            }
        }

        public void btn_Close_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        public void btn_Minimize_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }

        public void btn_Home_Click(object sender, RoutedEventArgs e)
        {
            this._NavigationFrame.Navigate(new Uri("Pages/Home.xaml", UriKind.Relative));
        }

        public void btn_Orders_Click(object sender, RoutedEventArgs e)
        {
            this._NavigationFrame.Navigate(new Uri("Pages/Orders.xaml", UriKind.Relative));
        }

        private void btn_ItemSearch_Click(object sender, RoutedEventArgs e)
        {
            this._NavigationFrame.Navigate(new Uri("Pages/ItemSearch.xaml", UriKind.Relative));
        }

        private void btn_UserSearch_Click(object sender, RoutedEventArgs e)
        {
            this._NavigationFrame.Navigate(new Uri("Pages/UserSearch.xaml", UriKind.Relative));
        }

        private void btn_Notifications_Click(object sender, RoutedEventArgs e)
        {
            this._NavigationFrame.Navigate(new Uri("Pages/Notifications.xaml", UriKind.Relative));
        }

        private void btn_NewItem_Click(object sender, RoutedEventArgs e)
        {
            this._NavigationFrame.Navigate(new Uri("Pages/NewItem.xaml", UriKind.Relative));
        }

        private void btn_NewSupplier_Click(object sender, RoutedEventArgs e)
        {
            this._NavigationFrame.Navigate(new Uri("Pages/NewSupplier.xaml", UriKind.Relative));
        }

        private void btn_Reports_Click(object sender, RoutedEventArgs e)
        {
            this._NavigationFrame.Navigate(new Uri("Pages/Reports.xaml", UriKind.Relative));
        }
    }
}
