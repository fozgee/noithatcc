using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace Fozg.DataController
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "adService" in both code and config file together.
    public class adService : IadService
    {
        public void DoWork()
        {
            
        }

        public string GetJsonTest()
        {
            return "hello";
        }
    }
}
