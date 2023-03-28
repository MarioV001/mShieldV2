using System.Windows;
using System.Windows.Input;

namespace mShield2
{
    /// <summary>
    /// Interaction logic for FileEncryption.xaml
    /// </summary>
    public partial class FileEncryption : Window
    {
        public FileEncryption()
        {
            InitializeComponent();
        }

        private void Additm_Click(object sender, RoutedEventArgs e)
        {

        }

        private void Encrpt_Click(object sender, RoutedEventArgs e)
        {

        }

        private void Decrypt_Click(object sender, RoutedEventArgs e)
        {

        }

        private void Removeitm_Click(object sender, RoutedEventArgs e)
        {

        }

        private void SaveLocationBTN_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                FolderBrowseDiag OPenFrm = new FolderBrowseDiag();
                if (FileSaveLocation.Content.ToString() == @"""""") Model.ShieldTools.LocationPathLookup = @"C:\";
                else Model.ShieldTools.LocationPathLookup = FileSaveLocation.Content.ToString()!.Replace(@"""", "");
                OPenFrm.ShowDialog();
                if(Model.ShieldTools.LocationPathLookup != "XLOSE")
                {
                    FileSaveLocation.Content=@""""+ Model.ShieldTools.LocationPathLookup + @"""";
                }
            }
            
        }

        private void FileEncryption1_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            Application.Current.Windows[Login_Screen.GetWindowOpenID("LoginScreen")].Show();
        }
    }
}
