using System;
using System.Collections.Generic;
using System.ComponentModel;
using static SocketConnection.SocketConnectionForm;

namespace mShield2.View
{
    // INotifyPropertyChanged notifies the View of property changes, so that Bindings are updated.
    sealed class TcpTraceView : INotifyPropertyChanged
    {
        //private TcpProcessRecord TcpStat;

        public List<TcpProcessRecord> ConList { get; set; }
        public TcpTraceView()
        {
            ConList = SocketConnection.SocketConnectionForm.GetAllTcpConnections();
            Console.WriteLine();
        }

        //public int PrcID
        //{
        //    get { return TcpStat.ProcessId; }
        //    set
        //    {
        //        if (TcpStat.ProcessId != value)
        //        {
        //            TcpStat.ProcessId = value;
        //            OnPropertyChange("PrcID");
        //        }
        //    }
        //}
        //public string Description
        //{
        //    get
        //    {
        //        var GetProc = Process.GetProcessById(TcpStat.ProcessId);
        //        if (GetProc != null && GetProc.MainModule != null)
        //        {
        //            return GetProc.MainModule.FileVersionInfo.FileDescription!;
        //        }
        //        else return "";
        //    }
        //    set
        //    {
        //        if (TcpStat.ProcessDesc != value)
        //        {
        //            TcpStat.ProcessDesc = value;
        //            OnPropertyChange("ProcessDesc");
        //        }
        //    }
        //}
        //
        //public System.Net.IPAddress TCPIP
        //{
        //    get { return TcpStat.RemoteAddress; }
        //    set
        //    {
        //        if (TcpStat.RemoteAddress != value)
        //        {
        //            TcpStat.RemoteAddress = value;
        //            OnPropertyChange("TCPIP");
        //        }
        //    }
        //}
        //public TcpTraceView()
        //{
        //    TcpStat = new TcpProcessRecord(){
        //
        //    }
        //}

        protected void OnPropertyChange(string propertyName)
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
            }
        }

        public event PropertyChangedEventHandler? PropertyChanged;
    }
}
