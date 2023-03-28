using mShield2.Model;
using System;
using System.Diagnostics;
using System.IO;
using System.Text.Json;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;


namespace mShield2.View
{
    /// <summary>
    /// Interaction logic for mTools.xaml
    /// </summary>
    public partial class mTools : Window
    {
        public static DeBloatRoot? DeserializedDeBloat;

        public mTools()
        {
            InitializeComponent();
            LoadJson();


        }
        private async void LoadJson()
        {
            MemoryStream MSS = new MemoryStream(Properties.Resources.DeBloat);
            StreamReader sr = new StreamReader(MSS);
            DeBloatRoot? NewDeBlaote = JsonSerializer.Deserialize<DeBloatRoot>(await sr.ReadToEndAsync());
            DeBloatList.DataContext = NewDeBlaote!.DeBloatData;
        }

        private void Border_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                Process.Start("reg.exe", "add \"HKCU\\Software\\Classes\\CLSID\\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\\InprocServer32\" /f /ve").WaitForExit();
                ShowRestartMsg();


            }
        }

        private void Border_MouseDown_1(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                Process.Start("reg.exe", "reg.exe delete \"HKCU\\Software\\Classes\\CLSID\\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\" /f").WaitForExit();
                ShowRestartMsg();
            }
        }

        private void ShowRestartMsg()
        {
            var result = MessageBox.Show("Explorer needs to be restarted to take effect!" + Environment.NewLine + "Restart Now ?", "Restart Explorer", MessageBoxButton.YesNo);
            if (result == MessageBoxResult.Yes)
            {
                // find all the explorer processes and kill them
                Process[] explorer = Process.GetProcessesByName("explorer");
                foreach (Process process in explorer)
                {
                    process.Kill();
                }

                // start a new explorer process
                Process.Start("explorer.exe");
            }
        }

        private void Border_MouseEnter(object sender, MouseEventArgs e)
        {
            Border myBoarder = (Border)sender;
            myBoarder.BorderBrush = new SolidColorBrush(CustomColors.SelectColor);
        }

        private void Border_MouseLeave(object sender, MouseEventArgs e)
        {
            Border myBoarder = (Border)sender;
            myBoarder.BorderBrush = new SolidColorBrush(CustomColors.DefaultColor);
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            Application.Current.Windows[Login_Screen.GetWindowOpenID("LoginScreen")].Show();
        }
    }
}
