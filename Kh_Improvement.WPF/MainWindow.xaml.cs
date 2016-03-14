using System.Windows;
using System.Windows.Controls;

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
            CheckBox[] boxes = new CheckBox[16];

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
            boxes[11] = chkBusDev;
            boxes[12] = chkScheduling;
            boxes[13] = chkShipping;
            boxes[14] = chkFacility;
            boxes[15] = chkOffice;

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


        private void Window_Loaded(object sender, RoutedEventArgs e)
        {            
            cboDepartments.Items.Add("*<Select Your Department>");
            cboDepartments.SelectedIndex = 0;

            //KhHandler handle = new KhHandler();

            //string[] depts = handle.GetDepartments();

            //foreach (string item in depts)
            //{
            //    cboDepartments.Items.Add(item);
            //}

        }

        private void btnSubmit_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
