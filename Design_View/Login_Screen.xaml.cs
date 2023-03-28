using System;

using System.Diagnostics;
using System.IO;

using System.Windows;
using System.Windows.Controls;

using System.Windows.Input;
using System.Windows.Media;
using System.Text.Json;
using System.Data;
using System.Collections.Generic;
using Microsoft.Win32;
using mShield2.View;

namespace mShield2
{
    /// <summary>
    /// Interaction logic for Login_Screen.xaml
    /// </summary>
    public partial class Login_Screen : Window
    {
        private static readonly Color SelectColor = Color.FromRgb(208, 127, 40);//Orange Color For Selection
        private static readonly Color DefaultColor = Color.FromRgb(45, 57, 78);//Default Color For Selection
        private int FailedAttempts = 3;
        private static bool IsLocked = true;
        public bool MainAllreadyOpen = false;

        public Login_Screen()
        {
            InitializeComponent();
            
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

        private void Border_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if(e.LeftButton == MouseButtonState.Pressed)
            {
                if (IsLocked == false)
                {
                    this.Hide();
                    if (IsWindowAllreadyOpen("MainShiledWindow") == true) Application.Current.Windows[Login_Screen.GetWindowOpenID("MainShiledWindow")].Show();
                    else
                    {
                        MainWindow OPenwin = new MainWindow();
                        OPenwin.Show();
                    }
                }
            }
        }
        private void LoginScreen_Loaded(object sender, RoutedEventArgs e)
        {
            if (Properties.Settings.Default.AutoLogin == true)
            {
                if (IsWindowAllreadyOpen("MainShiledWindow") == true) UnlckContr();
            }
        }

        private void Window_Initialized(object sender, EventArgs e)
        {
            
            PassTextBox.Text = GetWindowsSerial();

            if (Properties.Settings.Default.AutoLogin==true)
            {
                UsernIDTextBox.Text = Properties.Settings.Default.LoginIDAuto;
                SaveLogin.IsChecked = Properties.Settings.Default.AutoLogin;
                if (IsWindowAllreadyOpen("MainShiledWindow") == false) Button_Click(this, null!);
                else UnlckContr();
            }
            else this.Height = 145;

            if(IsAutoStartEnabled()==true) AutoStartMShield.IsChecked=true;
        }

        public static bool IsWindowAllreadyOpen(string FormName, bool CloseIFOpen = false)
        {
            bool IsWinAllreadyOpen = false;
            for (int i = 0; i < Application.Current.Windows.Count; i++)
            {
                if (Application.Current.Windows[i].Name == FormName)
                {
                    IsWinAllreadyOpen = true;
                    if (CloseIFOpen == true) Application.Current.Windows[i].Close();//thus need to change if working on Backround app
                    break;
                }
            }
            return IsWinAllreadyOpen;
        }
        public static int GetWindowOpenID(string FormName)
        {
            for (int i = 0; i < Application.Current.Windows.Count; i++)
            {
                if (Application.Current.Windows[i].Name == FormName)
                {
                    return i;
                }
            }
            return -1;
        }
        private string GetWindowsSerial()
        {
            //wmic os get serialnumber
            //* Create your Process
            Process process = new Process();
            process.StartInfo.FileName = "cmd.exe";
            process.StartInfo.Arguments = "/C wmic os get serialnumber";
            process.StartInfo.UseShellExecute = false;
            process.StartInfo.CreateNoWindow = true;
            process.StartInfo.RedirectStandardOutput = true;
            process.StartInfo.RedirectStandardError = true;
            //* Set output and error (asynchronous) handlers
            //* Start process and handlers
            process.Start();

            string output = process.StandardOutput.ReadToEnd();

            process.WaitForExit();
            if (output.Contains("SerialNumber")) output = output.Replace("SerialNumber", "").Replace(" ", "").Replace("\r", "").Replace("\n", "");
            else return "INVALID";
            return output;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {

            //StreamReader r = new StreamReader("file.json");
            //string jsonString = r.ReadToEnd();

            MemoryStream MS = new MemoryStream(Properties.Resources.LD);
            StreamReader sr = new StreamReader(MS);
            RootJ? myDeserializedClass = JsonSerializer.Deserialize<RootJ>(sr.ReadToEnd());


            bool FoundID = false;
            if(myDeserializedClass != null)
            {
                foreach (var item in myDeserializedClass.LoginInfoData.ToArray())
                {
                    if (item.ID == UsernIDTextBox.Text)
                    {
                        FoundID = true;
                        if (item.PASS == PassTextBox.Text)//The Windows Serial Number Matched for that ID
                        {
                            if (Properties.Settings.Default.AutoStartMshieldMain == true)//directly open the main Shield Ctrl
                            {
                                if (IsWindowAllreadyOpen("MainShiledWindow") == true) Application.Current.Windows[Login_Screen.GetWindowOpenID("MainShiledWindow")].Show();
                                else
                                {
                                    MainWindow OPenwin = new MainWindow();
                                    OPenwin.Show();
                                }
                                this.Hide();
                            }
                            else UnlckContr();
                        }
                        //else ErroAtemptAppend();

                    }
                }
                if (FoundID == false) ErroAtemptAppend();
            }
            else MessageBox.Show("Warning! there appears to be a missmatch in data" + Environment.NewLine +"Critical: #61125 ", "Invalid Data File!");


        }
        private void UnlckContr()
        {
            IsLocked = false;
            OpenMShieldButton.IsEnabled = true;
            ErrorBox.Visibility = Visibility.Hidden;
            this.Height = 520;
            UsernIDTextBox.IsEnabled = false;
            PassTextBox.IsEnabled = false;
            SubmitButton.IsEnabled = false; 
            mEncoderButton.IsEnabled = true;
            mLockButton.IsEnabled = true;
        }
        private void ErroAtemptAppend()
        {
            FailedAttempts--;
            if(FailedAttempts<=0)
            {
                Application.Current.Shutdown();
            }
            else
            {
                ErrorBox.Visibility = Visibility.Visible;
                InvalidLogintext.Content = "Invalid Login! [" + FailedAttempts + "] Attempts Remaining";
            }

            
        }



        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void SaveLogin_Checked(object sender, RoutedEventArgs e)
        {
            if (SaveLogin.IsChecked != null && IsLocked==false) 
                Properties.Settings.Default.AutoLogin = SaveLogin.IsChecked.Value;
            Properties.Settings.Default.LoginIDAuto = UsernIDTextBox.Text;
            Properties.Settings.Default.Save();
        }

        private void UsernIDTextBox_KeyDown(object sender, KeyEventArgs e)
        {
            if(e.Key == Key.Enter)
            {
                Button_Click(this, null!);
            }
        }
        private void AddApplicationToCurrentUserStartup()
        {
            using (RegistryKey key = Registry.CurrentUser.OpenSubKey("SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run", true)!)
            {
                key.SetValue("M-Shield2", "\"" + System.Reflection.Assembly.GetExecutingAssembly().Location + "\"");
            }
        }
        private void RemoveApplicationToCurrentUserStartup()
        {
            using (RegistryKey key = Registry.CurrentUser.OpenSubKey("SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run", true)!)
            {
                key.DeleteValue("M-Shield2", false);
            }
        }
        private bool IsAutoStartEnabled()
        {
            RegistryKey KeyReg = Registry.CurrentUser.OpenSubKey("SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run", true)!;
            if (KeyReg.GetValue("M-Shield2") == null) return false;
            else return true;
        }

        private void AutoStartMShield_Checked(object sender, RoutedEventArgs e)
        {
            if (AutoStartMShield.IsChecked == true) AddApplicationToCurrentUserStartup();
            else RemoveApplicationToCurrentUserStartup();
        }

        private void mEncoderButton_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                if (IsLocked == false)
                {
                    if (IsWindowAllreadyOpen("FileEncryption") == true) Application.Current.Windows[Login_Screen.GetWindowOpenID("FileEncryption")].Show();
                    else
                    {
                        FileEncryption OPenwin = new FileEncryption();
                        OPenwin.Show();
                    }
                    this.Hide();
                }
            }
        }

        private void mLockButton_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (IsLocked == false)
            {
                if (IsWindowAllreadyOpen("mTools") == true) Application.Current.Windows[Login_Screen.GetWindowOpenID("mTools")].Show();
                else
                {
                    mTools OPenwin = new mTools();
                    OPenwin.Show();
                }
                this.Hide();
            }
        }
    }
    public class LoginInfoData
    {
        public string ID { get; set; } = string.Empty;
        public string? PASS { get; set; } = string.Empty;
    }
    public class RootJ
    {
        public List<LoginInfoData> LoginInfoData { get; set; } = default!;
    }
}
