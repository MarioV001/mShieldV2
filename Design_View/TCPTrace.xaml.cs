using mShield2.MainSys;
using System.Windows;
using System.Windows.Controls;
using static SocketConnection.SocketConnectionForm;

namespace mShield2.View
{
    /// <summary>
    /// Interaction logic for TCPTrace.xaml
    /// </summary>
    public partial class TCPTrace : Window
    {
        private readonly TcpTraceView _viewModel;
        public TCPTrace()
        {
            InitializeComponent();
            _viewModel = new TcpTraceView();
            DataContext = _viewModel;

        }

        private void AcceptBTN_Click(object sender, RoutedEventArgs e)
        {
            var TcpList = SocketConnection.SocketConnectionForm.GetAllTcpConnections();
            foreach(var ims in TcpList)
            {
                //Console.WriteLine(ims.ToString());
            }

        }

        private void BtnCopyIP_Click(object sender, RoutedEventArgs e)
        {
            string DevIdLopp = (string)Extensions.GetPropValue(TcpConnectionListBox.SelectedItem, "RemoteAdress");            
        }

        private void TraceBTN_Click(object sender, RoutedEventArgs e)
        {
            var listViewItemX = Extensions.FindParent<ListViewItem>((DependencyObject)sender);
            if (listViewItemX != null)
            {
                TcpProcessRecord? newRec = listViewItemX.DataContext as TcpProcessRecord;
                if (newRec != null && newRec.ProcessId != 0)
                {
                    mBlock.TempProcessClass!.ID = newRec.ProcessId;
                    Shield_List.IsTraceLookup = true;
                    Shield_List NewWindow = new Shield_List();
                    NewWindow.Owner = this;
                    NewWindow.ShowDialog();
                }
                else return;
            }
        }


        

    }
}
