using mShield2.MainSys;
using System;
using System.Windows;
using System.Windows.Input;
using System.Windows.Threading;

namespace mShield2
{
    /// <summary>
    /// Interaction logic for ExPopUp.xaml
    /// </summary>
    public partial class ExPopUp : Window
    {
        public ExPopUp()
        {
            InitializeComponent();
        }
        int CoundDownSec = 10;
        DispatcherTimer AutoCloseTimer = new DispatcherTimer();
        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            var desktopWorkingArea = SystemParameters.WorkArea;
            this.Left = desktopWorkingArea.Right - this.Width;
            this.Top = desktopWorkingArea.Bottom - this.Height;
            //
            StartTimeLabel.Content = DateTime.Now.ToString("hh:mm:ss tt");

            ProcIDLabel.Content = "("+ mBlock.TempProcessClass?.ID + ")";
            ProcNameLabel.Content= mBlock.TempProcessClass?.Name;
            DescriptionLabel.Content = mBlock.TempProcessClass?.Description;
            RespondingLabel.Content = "Responding: " + mBlock.TempProcessClass?.Responding;
            //
            
            AutoCloseTimer.Tick -= new EventHandler(AutoBlock_Tick!);
            AutoCloseTimer.Tick += new EventHandler(AutoBlock_Tick!);
            AutoCloseTimer.Interval = new TimeSpan(0, 0, 1);
            AutoActionLabel.Content = "Automatically taking action in: " + CoundDownSec;
            AutoCloseTimer.Start();
            CoundDownSec = 10;

            try
            {
                if (DescriptionLabel.Content!.ToString()!.Contains("Cannot process request")) TraceInfoBTN.IsEnabled = false;
                else if (DescriptionLabel.Content.ToString()! == "") TraceInfoBTN.IsEnabled = false;
            }
            catch
            {
                TraceInfoBTN.IsEnabled = false;
            }

            this.Topmost = true;
        }
        private void AutoBlock_Tick(object sender, EventArgs e)
        {
            CoundDownSec--;
            AutoActionLabel.Content = "Automatically taking action in: " + CoundDownSec;
            if (CoundDownSec < 1)
            {
                mBlock.IsProcAccepted = false;
                mBlock.IsAutoDeclined = true;
                AutoCloseTimer.Stop();
                this.Close();
            }
        }

        private void DeclineBTN_Click(object sender, RoutedEventArgs e)
        {
            mBlock.IsProcAccepted = false;
            mBlock.IsAutoDeclined = false;
            this.Close();
        }

        private void AcceptBTN_Click(object sender, RoutedEventArgs e)
        {
            mBlock.IsProcAccepted = true;
            mBlock.IsAutoDeclined = false;
            this.Close();
        }

        private void TraceInfoBTN_MouseDown(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            if(e.LeftButton == MouseButtonState.Pressed)
            {
                Shield_List.IsTraceLookup= true;
                Shield_List NewWindow = new Shield_List();
                NewWindow.Owner = this;
                NewWindow.ShowDialog();
            }
        }

        private void Window_MouseEnter(object sender, MouseEventArgs e)
        {
            this.Opacity = 100;
            AutoCloseTimer.Stop();
            AutoActionLabel.Visibility = Visibility.Hidden;
        }

        private void Window_MouseLeave(object sender, MouseEventArgs e)
        {
            this.Opacity = 70;
        }
    }
}
