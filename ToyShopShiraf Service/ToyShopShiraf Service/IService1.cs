﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace ToyShopShiraf_Service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IToyShopService" in both code and config file together.
    [ServiceContract]
    public interface IService1
    {
        [OperationContract]
        bool Login(string uname, string password);

        [OperationContract]
        List<List<string>> GetItem();
    }
}
