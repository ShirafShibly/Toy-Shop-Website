using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.IO;
using System.Web;
using System.Xml;

namespace ToyShopShiraf_Service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "ToyShopService" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select ToyShopService.svc or ToyShopService.svc.cs at the Solution Explorer and start debugging.
    public class Service1 : IService1
    {
        public bool Login(string uname, string password)
        {
            string paths = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "XMLData/Login.xml");
            // String path = "~/XMLDATA/Users.xml";
            XmlDocument xmlDoc = new XmlDocument();
            xmlDoc.Load(paths);
            XmlNodeList nodeList = xmlDoc.DocumentElement.SelectNodes("/Users/User");
            bool Login = false;
            foreach (XmlNode node in nodeList)
            {

                if (uname == node.SelectSingleNode("Username").InnerText.Trim() && password == node.SelectSingleNode("Password").InnerText.Trim())
                {
                    Login = true;
                    break;
                }

            }

            return Login;
        }

        public List<List<string>> GetItem()
        {
            string baseurl = HttpContext.Current.Request.Url.Scheme + "://" + HttpContext.Current.Request.Url.Authority + HttpContext.Current.Request.ApplicationPath.TrimEnd('/') + "/";
            string paths = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "XMLData/ToysItems.xml");
            XmlDocument xmlDoc = new XmlDocument();
            xmlDoc.Load(paths);
            XmlNodeList nodeList = xmlDoc.DocumentElement.SelectNodes("/Toysstore/Toys");

            List<List<string>> Toys = new List<List<string>>();

            foreach (XmlNode node in nodeList)
            {
                List<string> ToyDetails = new List<string>();
                ToyDetails.Add(node.SelectSingleNode("title").InnerText.Trim());
                ToyDetails.Add(baseurl + "/Image/" + node.SelectSingleNode("image").InnerText.Trim());
                //ToyDetails.Add(node.SelectSingleNode("discription").InnerText.Trim());
                ToyDetails.Add(node.SelectSingleNode("price").InnerText.Trim());
                Toys.Add(ToyDetails);
            }
            return Toys;
        }
    }
}