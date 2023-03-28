using System;
using System.Windows;
using System.Windows.Input;
using System.Windows.Threading;

namespace mShield2
{
    /// <summary>
    /// Interaction logic for BlockAppPopUp.xaml
    /// </summary>
    public partial class BlockAppPopUp : Window
    {
        DispatcherTimer CloseTimer = new DispatcherTimer();
        public BlockAppPopUp()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            var desktopWorkingArea = SystemParameters.WorkArea;
            this.Left = desktopWorkingArea.Right - this.Width;
            this.Top = desktopWorkingArea.Bottom - this.Height;
            //
            
            CloseTimer.Tick -= CloseTimer_Tick!;
            CloseTimer.Tick += CloseTimer_Tick!;
            CloseTimer.Interval = new TimeSpan(0, 0, 6);
            CloseTimer.Start();
        }
        private void CloseTimer_Tick(object sender, EventArgs e)
        {
            CloseTimer.Stop();
            this.Close();
        }
            private void Image_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if(e.LeftButton == MouseButtonState.Pressed)
            {
                this.Close();
            }
        }
    }
}
