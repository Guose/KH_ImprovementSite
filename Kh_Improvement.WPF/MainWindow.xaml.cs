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

namespace Kh_Improvement.WPF
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void btnExit_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void chkSelectAll_Click(object sender, RoutedEventArgs e)
        {
            CheckBox[] boxes = new CheckBox[14];

            boxes[0] = chkBindery;
            boxes[1] = chkDigital;
            boxes[2] = chkEC;
            boxes[3] = chkIT;
            boxes[4] = chkLetterShop;
            boxes[5] = chkLogistics;
            boxes[6] = chkManagement;
            boxes[7] = chkPackaging;
            boxes[8] = chkPM;
            boxes[9] = chkPrepress;
            boxes[10] = chkPressRoom;
            boxes[11] = chkSales;
            boxes[12] = chkScheduling;
            boxes[13] = chkShipping;

            if (chkSelectAll.IsChecked == true)
            {
                for (int i = 0; i < boxes.Length; i++)
                {
                    boxes[i].IsChecked = true;
                }
            }
            else if (chkSelectAll.IsChecked == false)
            {
                for (int i = 0; i < boxes.Length; i++)
                {
                    boxes[i].IsChecked = false;
                }
            }
        }
    }
}
