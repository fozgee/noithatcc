using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace Fozg.DataController
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IadService" in both code and config file together.
    [ServiceContract]

    public interface IadService
    {
        [OperationContract]        
        void DoWork();

        [OperationContract]
        [WebGet(ResponseFormat = WebMessageFormat.Json, UriTemplate = "GetJsonTest")]
        string GetJsonTest();
    }
}
