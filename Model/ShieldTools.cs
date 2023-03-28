using System;
using System.Diagnostics;
using System.Management;
using System.Security.Principal;
using System.Windows.Media.Imaging;

namespace mShield2.Model
{
    public class ShieldTools
    {
        public static string LocationPathLookup = "";

        public static string GetCommandLine(Process process)
        {
            string? cmdLine = null;
            using (var searcher = new ManagementObjectSearcher($"SELECT CommandLine FROM Win32_Process WHERE ProcessId = {process.Id}"))
            {
                using (var matchEnum = searcher.Get().GetEnumerator())
                {
                    if (matchEnum.MoveNext()) // Move to the 1st item.
                    {
                        cmdLine = matchEnum.Current["CommandLine"]?.ToString();
                    }
                }
            }
            if (cmdLine == null)
            {
                var dummy = process.MainModule; // Provoke exception.
            }
            return cmdLine!;
        }
        public static bool IsAdministrator()
        {
            return (new WindowsPrincipal(WindowsIdentity.GetCurrent()))
                      .IsInRole(WindowsBuiltInRole.Administrator);
        }


        //
        //==Folder Browse Dialog
        //
        public static FolderData AddNewFolder(string FolderReplace,string LocationPath)
        {
            return new FolderData { ImageData = new BitmapImage(new Uri("../Images/Folder-Explore.png", UriKind.Relative)), FolderName = FolderReplace.Replace(LocationPath, "") };
        }
        public class FolderData
        {
            public BitmapImage ImageData { get; set; } = new BitmapImage(new Uri("../Images/Folder-Explore.png", UriKind.Relative));
            public string FolderName { get; set; } = string.Empty;

        }
    }
}
