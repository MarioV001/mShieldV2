using System.Collections.Generic;


namespace mShield2.Model
{
    public class StoredProcesess
    {
        public string Name { get; set; } = string.Empty;
        public string OGName { get; set; } = string.Empty;
        public string Description { get; set; } = string.Empty;
        public string AllowedToRUn { get; set; } = string.Empty;
        public string AutoAdded { get; set; } = string.Empty;
        public string StartPath { get; set; } = string.Empty;
        public string CommandLineParams { get; set; } = string.Empty;
        public string TCPIP { get; set; } = string.Empty;
    }
    public class AppsRootJ
    {
        public List<StoredProcesess> StoredProcesess { get; set; } = default!;//may change to dictionary ?
        //public Dictionary<StoredProcesess> eXStoredProcesess { get; set; } = default!;
    }
    public class TempProcesess
    {
        public int ID ;
        public string Name = "";
        public string OGName = "";
        public string Description = "";
        public string Responding = "";
        public string AutoAdded = "";
        public string AllowedToRUn = "";
        public string StartPath = "";
        public string CommandLineParams = "";
        public string TCPIP  = "";
    }
}
