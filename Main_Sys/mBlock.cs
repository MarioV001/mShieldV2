using System;
using System.Diagnostics;
using System.IO;
using System.Net.NetworkInformation;

namespace mShield2.MainSys
{
    public static class mBlock
    {
        public static Model.AppsRootJ? myDeserializedClass;

        public static bool IsProcAccepted { get; set; } = false;
        public static bool IsAutoDeclined { get; set; } = false;
        private static int ShieldUpdateSlider { get; set; } = 0;
        private static int mShieldUpdateSlider { get; set; } = 0;
        public static double DetecotrSlider { get; set; } = 0;
        //
        public static int ProcKilledXtimes { get; set; } = 0;
        private static bool DeleteProc { get; set; }
        private static bool DeleteProcPanelVisibility { get; set; } = false;
        private static string DeleteLabel { get; set; } = "X-Times:";
        private static string LastProcessBlocked { get; set; } = "";
        private static bool IsKilledSucsess { get; set; } = false;
        public static string ProcTimeKilled { get; set; } = "00:00:00";

        public static Model.TempProcesess? TempProcessClass = new Model.TempProcesess();//declaring the Temp variables static so we can use them in all forms

        public static void RunScan()
        {
            IsProcAccepted = false; IsAutoDeclined = false;
            Process[] localAll = Process.GetProcesses();

            // Get the IP global properties for the current network
            IPGlobalProperties ipProperties = IPGlobalProperties.GetIPGlobalProperties();

            // Get the active TCP connections
            TcpConnectionInformation[] connections = ipProperties.GetActiveTcpConnections();

            if (myDeserializedClass == null)
            {
                //StopMShield();
                mShieldUpdateSlider = 0;
                Extensions.AddErrorMSG("Database file could now be loaded!");
                return;
            }

            foreach (Process Proc in localAll)
            {
                if (Proc.Id < 5)//prevents looking into System Processes
                {
                    continue;
                }
                bool IsFound = false;
                foreach (var item in myDeserializedClass.StoredProcesess.ToArray())
                {
                    if (Proc.ProcessName == item.Name)
                    {
                        if (item.AllowedToRUn == "False") KillProcess(Proc);
                        IsFound = true;
                        break;
                    }
                }
                if (IsFound == false && DetecotrSlider == 1)//not found add new item to DB ?
                {
                    TempProcessClass!.Name = Proc.ProcessName;
                    TempProcessClass!.Responding = Proc.Responding.ToString();
                    TempProcessClass.ID = Proc.Id;

                    string ProcDescription = "", startPath = "", CMDparams = "", OGFilename = "";
                    try
                    {
                        ProcDescription = Proc.MainModule!.FileVersionInfo.FileDescription!;
                        startPath = Proc.MainModule!.FileName!;
                        OGFilename = Proc.MainModule!.FileVersionInfo.OriginalFilename!;
                        CMDparams = Model.ShieldTools.GetCommandLine(Proc).Replace(startPath, "").Replace(@"""", "");
                    }
                    catch (Exception ex)
                    {
                        ProcDescription = ex.Message;
                        startPath = ex.Message;
                        OGFilename = ex.Message;
                        CMDparams = ex.Message;
                    }
                    TempProcessClass!.Description = ProcDescription;
                    TempProcessClass.StartPath = startPath;
                    TempProcessClass.OGName = OGFilename;
                    TempProcessClass.CommandLineParams = CMDparams;
                    //TempProcessClass.TCPIP = 

                    ExPopUp NewWin = new ExPopUp();
                    NewWin.ShowDialog();

                    if (IsProcAccepted == false) KillProcess(Proc);
                    myDeserializedClass.StoredProcesess.Add(new Model.StoredProcesess
                    {
                        Name = Proc.ProcessName,
                        OGName = OGFilename,
                        AllowedToRUn = IsProcAccepted.ToString(),
                        Description = ProcDescription,
                        StartPath = startPath,
                        CommandLineParams = CMDparams,
                        AutoAdded = IsAutoDeclined.ToString(),
                    });
                    //clear the TEMP
                    TempProcessClass.ID = 0;
                    TempProcessClass.Name = "";
                    TempProcessClass.OGName = "";
                    TempProcessClass.AllowedToRUn = "";
                    TempProcessClass.Description = "";
                    TempProcessClass.StartPath = "";
                    TempProcessClass.CommandLineParams = "";
                }

            }
        }

        //
        //

        public static void KillProcess(Process ProcessToKill, bool LocalKill = true)
        {
            if (ProcessToKill.ProcessName == LastProcessBlocked.ToString()!.Replace("Last Process Blocked: ", "")) ProcKilledXtimes = Convert.ToInt32(ProcKilledXtimes) + 1;
            else//New process blocked reset count
            {
                ProcKilledXtimes = 0;
                
                DeleteProc = false;
                //DeleteProcPanel.Visibility = Visibility.Hidden;
                DeleteLabel = "X-Times:";
            }
            if (LocalKill == true)
            {
                try
                {
                    ProcessToKill.Kill();
                    if (DeleteProc == true)//Delete Process Extreme
                    {
                        //ProcessToKill.MainModule!.FileName!;
                        File.Delete(ProcessToKill.MainModule!.FileName!);
                        //DeleteIcon.Source = new System.Windows.Media.Imaging.BitmapImage(new Uri("Images/shield(1).png", UriKind.Relative));
                        DeleteLabel = "X-Delete:";
                    }
                    IsKilledSucsess = true;
                    //IsKilledSucsess.Foreground = Model.CustomColors.SetSolidColor(Model.CustomColors.GreenLabelColor);
                }
                catch
                {
                    IsKilledSucsess = false;
                    //IsKilledSucsess.Foreground = Model.CustomColors.SetSolidColor(Model.CustomColors.RedLabelColor);
                }
            }
            else
            {
                Process proc = new Process();
                ProcessStartInfo info = new ProcessStartInfo()
                {
                    FileName = "CMD.exe",
                    Arguments = "/C taskkill /im " + ProcessToKill.ProcessName + " /f",
                    CreateNoWindow = true,
                    UseShellExecute = true,
                    WindowStyle = ProcessWindowStyle.Hidden,
                    Verb = "runas"
                }; //specify paramaters and make it hidden
                proc.StartInfo = info;
                proc.Start();
            }

            LastProcessBlocked = "Last Process Blocked: " + ProcessToKill.ProcessName;
            ProcTimeKilled = DateTime.Now.ToString("hh:mm:ss");
            //PopUp
            Login_Screen.IsWindowAllreadyOpen("BlockAPPPopUp", true);
            BlockAppPopUp NewWinBlock = new BlockAppPopUp();
            NewWinBlock.NameProcesslabel.Content = "Name: " + ProcessToKill.ProcessName;
            NewWinBlock.KilledProcLabel.Content = "Killed: " + IsKilledSucsess;
            NewWinBlock.xTimesLabel.Content = "X-Times: " + ProcKilledXtimes;
            NewWinBlock.Topmost = true;
            NewWinBlock.Show();
            if (Convert.ToInt32(ProcKilledXtimes) == 6)
            {
                if (Model.ShieldTools.IsAdministrator() == true) Extensions.AddErrorMSG("mShield Unable to kill process");
                else Extensions.AddErrorMSG("Could Not Kill Process Please Run in Admin Mode!");
            }
            else if (Convert.ToInt32(ProcKilledXtimes) == 10)
            {
                DeleteProcPanelVisibility = true;
            }
        }

    }
    
    

}
