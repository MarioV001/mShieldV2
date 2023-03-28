using mShield2.MainSys;
using mShield2.View;
using System;
using System.IO;
using System.Text.Json;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Threading;

namespace mShield2
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {

        private readonly MainShield _ViewModel;
        DispatcherTimer mShieldTimer = new DispatcherTimer();
        
        
        public MainWindow()
        {
            InitializeComponent();
            _ViewModel = new MainShield();
            DataContext = _ViewModel;//set up the DataContext for Source Binding
        }

        private void MainShiledWindow_Initialized(object sender, EventArgs e)
        {

        }
        private void MainShiledWindow_Loaded(object sender, RoutedEventArgs e)
        {
            SlideUpdateTImer.Focus();//so it forces the slider to update

            DeleteProcPanel.Visibility = Visibility.Hidden;
            SlideUpdateTImer.Value = Properties.Settings.Default.mShieldUpdateTimer;
            //check for DB signing
            if (Properties.Settings.Default.DBSelected == "null")//new user ?
            {
                DataSelectionScreen OPenFrm = new DataSelectionScreen();
                OPenFrm.ShowDialog();
                OPenFrm.Focus();
            }
            //Check Admin
            if (Model.ShieldTools.IsAdministrator() == true)
            {
                IsAdminLabel.Content = "True";
                IsAdminLabel.Foreground = Model.CustomColors.SetSolidColor(Model.CustomColors.GreenLabelColor);
                
            }
            else
            {
                IsAdminLabel.Content = "False";
                IsAdminLabel.Foreground = Model.CustomColors.SetSolidColor(Model.CustomColors.RedLabelColor);
            }
            //Connect to DB
            Extensions.AddErrorMSG("Warning: Could Not Connect To ExDevelopers Server!");
            //load Json
            LoadAppsDatabaseFile();
        }

        public void LoadAppsDatabaseFile()
        {
            if (File.Exists(Properties.Settings.Default.DBSelected) == true) mBlock.myDeserializedClass = JsonSerializer.Deserialize<Model.AppsRootJ>(File.ReadAllText(Properties.Settings.Default.DBSelected));
            else Extensions.AddErrorMSG("Could Not Find Database FIle: " + Properties.Settings.Default.DBSelected);
        }
        private void Slider_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            Slider CurentSLider = (Slider)sender;
            if(CurentSLider.IsMouseDirectlyOver || CurentSLider.IsMouseOver || CurentSLider.IsFocused)
            {
                UpdateTimeLabel.Content = "mShiled Update: " + e.NewValue + "ms";
                Properties.Settings.Default.mShieldUpdateTimer = e.NewValue;
                mShieldTimer.Interval = TimeSpan.FromMilliseconds(e.NewValue);
            }
            
        }
        

        private void Border_MouseEnter(object sender, MouseEventArgs e)
        {
            Border myBoarder = (Border)sender;
            myBoarder.BorderBrush = Model.CustomColors.SetSolidColor(Model.CustomColors.SelectColor);
        }

        private void StartTraceBTN_MouseLeave(object sender, MouseEventArgs e)
        {
            Border myBoarder = (Border)sender;
            myBoarder.BorderBrush = Model.CustomColors.SetSolidColor(Model.CustomColors.DefaultColor);
        }

        private void Border_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                Application.Current.Windows[Login_Screen.GetWindowOpenID("LoginScreen")].Show();
                this.Hide();
                
            }
        }

        private void MenuItem_ContextMenuOpening(object sender, ContextMenuEventArgs e)
        {
            AutoStartMainShield.IsChecked = Properties.Settings.Default.AutoStartMshieldMain;
        }

        private void MenuItem_Checked(object sender, RoutedEventArgs e)
        {
            Properties.Settings.Default.AutoStartMshieldMain = AutoStartMainShield.IsChecked;
            Properties.Settings.Default.Save();
        }

        private void AutoStartMainShield_Click(object sender, RoutedEventArgs e)
        {
            AutoStartMainShield.IsChecked = !AutoStartMainShield.IsChecked;
        }

        private void Border_MouseDown_1(object sender, MouseButtonEventArgs e)
        {
            if(e.LeftButton == MouseButtonState.Pressed)
            {
                Shield_List OpenFrm = new Shield_List();
                OpenFrm.Show();
            }
        }
        private void MenuItem_Click(object sender, RoutedEventArgs e)//DB Selection COntext Menu
        {
            DataSelectionScreen OpenFrm = new DataSelectionScreen();
            OpenFrm.ShowDialog();
            LoadAppsDatabaseFile();
        }

        private void StartmShield()
        {
            mShieldTimer.Tick -= mShieldTimer_Tick!;
            mShieldTimer.Tick += mShieldTimer_Tick!;
            mShieldTimer.Interval = TimeSpan.FromMilliseconds(mShieldSlider.Value);
            mShieldTimer.Start();
            mShieldEnabledLabel.Foreground = Model.CustomColors.SetSolidColor(Model.CustomColors.GreenLabelColor);
            mShieldEnabledLabel.Content = "Enabled";
        }
        private void StopMShield()
        {
            mShieldTimer.Stop();
            mShieldEnabledLabel.Foreground = Model.CustomColors.SetSolidColor(Model.CustomColors.RedLabelColor);
            mShieldEnabledLabel.Content = "Disabled";
        }
        
        private void mShieldTimer_Tick(object sender,EventArgs e)
        {
            mBlock.RunScan();
        }

        
        private void SaveDBsettings()
        {
            if (mBlock.myDeserializedClass != null)
            {
                var options = new JsonSerializerOptions { WriteIndented = true };
                string JsonOut = JsonSerializer.Serialize(new { StoredProcesess = mBlock.myDeserializedClass!.StoredProcesess }, options);
                File.WriteAllText(Properties.Settings.Default.DBSelected, JsonOut);
            }
            
        }
        private void MainShiledWindow_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            if (mShieldTimer.IsEnabled == true)
            {
                mShieldTimer.Stop();
            }
            SaveDBsettings();
            //
            Properties.Settings.Default.Save();
            Application.Current.Shutdown();
        }

        private void mShieldSlider_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            if (mShieldSlider.Value == 1) StartmShield();//Enabled
            else StopMShield();//Disable
        }

        private void DetecotrSlider_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            mBlock.DetecotrSlider = DetecotrSlider.Value;
            if(DetecotrSlider.Value==0)
            {
                DetectorEnabledLabel.Foreground= Model.CustomColors.SetSolidColor(Model.CustomColors.RedLabelColor);
                DetectorEnabledLabel.Content = "Disabled";
            }
            else
            {
                DetectorEnabledLabel.Foreground = Model.CustomColors.SetSolidColor(Model.CustomColors.GreenLabelColor);
                DetectorEnabledLabel.Content = "Enabled";
            }
        }

        private void ResetBlockedStatus_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if(e.LeftButton== MouseButtonState.Pressed)
            {
                LastProcessBlocked.Content = "Last Process Blocked:";
                ProcTimeKilled.Content = "00:00:00";
                ProcKilledXtimes.Content = "0";
                DeleteLabel.Content = "X-Times:";
                DeleteProc.IsChecked = false;
            }
        }

        private void MenuItem_Click_1(object sender, RoutedEventArgs e)
        {
            SaveDBsettings();
        }
        

        private void WarnImageBoxClose_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if(e.LeftButton == MouseButtonState.Pressed)
            {
                int Index = Convert.ToInt32(ErrorMSGLabel.Name.Replace("ERR_", ""));
                if (Index > 0)
                {
                    Extensions.RemoveErrorMSG(Index);
                    ErrorMSGLabel.Content = Extensions.ErroMSGGroup[Index - 1];
                    ErrorMSGLabel.Name = "ERR_" + (Index - 1);
                }
                else
                {
                    Extensions.ClearErrorMSG();
                    ErrorMessageBox.Visibility = Visibility.Hidden;
                }
            }
        }

        private void DeleteProc_Checked(object sender, RoutedEventArgs e)
        {
            if (DeleteProc.IsChecked == true)
            {
                DeleteLabel.Content = "X-Delete:";
                ProcKilledXtimes.Content = "0";
            }
        }

        private void StartTraceBTN_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                TCPTrace OpenWIn = new TCPTrace();
                OpenWIn.Show();
            }
        }
    }
    
}
