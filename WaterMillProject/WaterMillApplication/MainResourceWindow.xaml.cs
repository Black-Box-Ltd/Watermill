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

namespace WaterMillProject
{
    public partial class MainResourceWindow : Window
    {
        public MainResourceWindow()
        {
            InitializeComponent();
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
    }
}
