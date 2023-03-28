using System.IO;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;

namespace mShield2
{
    /// <summary>
    /// Interaction logic for DataSelectionScreen.xaml
    /// </summary>
    public partial class DataSelectionScreen : Window
    {
        private static readonly Color SelectColor = Color.FromRgb(208, 127, 40);//Orange Color For Selection
        private static readonly Color DefaultColor = Color.FromRgb(45, 57, 78);//Default Color For Selection
        LinearGradientBrush ChosenGradient = new LinearGradientBrush();
        LinearGradientBrush DefaultGradient= new LinearGradientBrush();

        public DataSelectionScreen()
        {
            InitializeComponent();
            ChosenGradient.StartPoint = new Point(0.5, 0);
            ChosenGradient.EndPoint = new Point(0.5, 1);
            ChosenGradient.GradientStops.Add(new GradientStop(Color.FromRgb(32,36,47), 0.25));
            ChosenGradient.GradientStops.Add(new GradientStop(Color.FromRgb(187, 82, 51), 1));

            DefaultGradient.StartPoint = new Point(0.5, 0);
            DefaultGradient.EndPoint = new Point(0.5, 1);
            DefaultGradient.GradientStops.Add(new GradientStop(Color.FromRgb(32, 36, 47), 0.25));
            DefaultGradient.GradientStops.Add(new GradientStop(Color.FromRgb(30, 39, 56), 1));
        }

        private void Border_MouseEnter(object sender, MouseEventArgs e)
        {
            Border myBoarder = (Border)sender;
            myBoarder.BorderBrush = new SolidColorBrush(SelectColor);
        }

        private void StartTraceBTN_MouseLeave(object sender, MouseEventArgs e)
        {
            Border myBoarder = (Border)sender;
            myBoarder.BorderBrush = new SolidColorBrush(DefaultColor);
        }

        private void DefaultDB_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if(e.LeftButton == MouseButtonState.Pressed)
            {
                Border myBoarder = (Border)sender;
                myBoarder.Background= ChosenGradient;
                NewDB.Background = DefaultGradient;
                ProceedBTN.Visibility = Visibility.Visible;
                Properties.Settings.Default.DBSelected = "DefaultMV.json";
                
            }
        }

        private void NewDM_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                Border myBoarder = (Border)sender;
                myBoarder.Background = ChosenGradient;
                DefaultDB.Background = DefaultGradient;
                ProceedBTN.Visibility = Visibility.Visible;
                Properties.Settings.Default.DBSelected = "CustomDB.json";
            }
        }
        private void NExportDB_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                Border myBoarder = (Border)sender;
                myBoarder.Background = ChosenGradient;
                DefaultDB.Background = DefaultGradient;
                ProceedBTN.Visibility = Visibility.Visible;
                Properties.Settings.Default.DBSelected = "CustomDB.json";
            }
        }
        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            if (Properties.Settings.Default.DBSelected == "null")
            {
                HeaderLabel.Content = "It appears your running mShield for the first time Please Choose a DataBase type";
                ExitdBTN.Visibility = Visibility.Hidden;
                ProceedBTN.Visibility = Visibility.Hidden;
            }
            else
            {
                ExitdBTN.Visibility = Visibility.Visible;
                if (Properties.Settings.Default.DBSelected == "DefaultMV.json") DefaultDB.Background = ChosenGradient;
                else if (Properties.Settings.Default.DBSelected == "CustomDB.json") NewDB.Background = ChosenGradient;
            }
        }

        private void Border_MouseDown(object sender, MouseButtonEventArgs e)//proceed
        {
            Properties.Settings.Default.Save();
            if (Properties.Settings.Default.DBSelected == "DefaultMV.json") File.WriteAllBytes("DefaultMV.json", Properties.Resources.DefaultMV);
            else if (Properties.Settings.Default.DBSelected == "CustomDB.json") File.WriteAllBytes("DefaultMV.json", Properties.Resources.DefaultMV);
            this.Close();
        }

        
    }
}
