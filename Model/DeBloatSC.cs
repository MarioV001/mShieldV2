using System.Collections.Generic;


namespace mShield2.Model
{
   public class DeBloatData
    {
        public string TYPE { get; set; } = "";
        public string NAME { get; set; } = "";
    }

    public partial class  DeBloatRoot
    {
        public List<DeBloatData> DeBloatData { get; set; } = default!;
    }
}
