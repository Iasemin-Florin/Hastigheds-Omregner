using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
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

namespace Hastigheds_Omregner
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            BindSpeed();
        }
        public void BindSpeed()
        {
            DataTable DTSpeed = new DataTable();

            //Adding columns

            DTSpeed.Columns.Add("Text");
            DTSpeed.Columns.Add("Value");
            DTSpeed.Rows.Add("--Vælge et hastighed (m/s, km/t)");
            DTSpeed.Rows.Add("m/s", 3.6);
            DTSpeed.Rows.Add("km/t", 0.27778);
            

            cmbFromSpeed.ItemsSource = DTSpeed.DefaultView;
            cmbFromSpeed.DisplayMemberPath = "Text";
            cmbFromSpeed.SelectedValuePath = "Value";
            cmbFromSpeed.SelectedIndex = 0;

            cmbToSpeed.ItemsSource = DTSpeed.DefaultView;
            cmbToSpeed.DisplayMemberPath = "Text";
            cmbToSpeed.SelectedValuePath = "Value";
            cmbToSpeed.SelectedIndex = 0;
        }

        private void NumberValidationTextBox(object sender, TextCompositionEventArgs e)
        {
            //Using regex to see if there are only numbers in the textbox
            Regex regex = new Regex("[^0-9]");
            //Checking if its a match   
            e.Handled = regex.IsMatch(e.Text);
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            double parsedValue;
            //Checking if the textbox is empty
            if (txtSpeed.Text.Trim() == string.Empty)
            {
                MessageBox.Show("Indtast noget i text boxen");
                return;
            }
            //checking if the comboBox value has been chosen and checking the chosen index
            else if (cmbFromSpeed.SelectedValue == null || cmbFromSpeed.SelectedIndex == 0)
            {
                MessageBox.Show("Vælge hvilket hastighed du vil omregne fra", "Information", MessageBoxButton.OK);
                cmbFromSpeed.Focus();
                return;
            }
            //Checking if the comboBox value has been chosen and checking the chosen index
            else if (cmbToSpeed.SelectedValue == null || cmbToSpeed.SelectedIndex == 0)
            {
                MessageBox.Show("Vælge hvilket hastighed du vil omregne til", "Information", MessageBoxButton.OK);
                cmbToSpeed.Focus();
                return;
            }
            else if ((cmbFromSpeed.SelectedIndex == 1 && cmbToSpeed.SelectedIndex == 1) || (cmbFromSpeed.SelectedIndex == 2 && cmbToSpeed.SelectedIndex == 2))
            {
                MessageBox.Show("Du kan ikke vælge samme hastighed til begge boxer", "Information", MessageBoxButton.OK);
                cmbFromSpeed.Focus();
                cmbToSpeed.Focus();
                return;
            }
            else
            {
                parsedValue = (double.Parse(cmbFromSpeed.SelectedValue.ToString()) * double.Parse(txtSpeed.Text));
                txtConvertedValue.Content = cmbToSpeed.Text + " " + parsedValue.ToString("N2");
            }
        }
    }
}
