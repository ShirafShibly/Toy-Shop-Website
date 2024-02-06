using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ToyShopWeb.ServiceReference1;

namespace ToyShopWeb
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)

        {
            Service1Client obj = new Service1Client();
            string[][] item = obj.GetItem();
            string html = "";
            html += "";

            for (int i = 0; i < item.Length; i++)
            {
                string[] itemdetails = item[i].ToArray();

                html += "<div class='col-md-3 col-lg-3 pt-md-4 pt-3'>";
                html += "<div class='card mt-3'>";
                html += " <div class='product-1 align-items-center p-2 text-center wi'>";
                html += "<img src = '" + itemdetails[1] + "' class='card-img-top rounded wi ' alt ='' > ";
                html += "</div>";
                html += "<div class='mt-3 info ps-4'>";
                html += "<h5 class='card-title pt-4'>" + itemdetails[0] + "</h5>";
                html += "</div>";
                html += "<div class='mt-3 info ps-4'>";
                html += "<span class='text1 d-block mt-4'>" + itemdetails[2] + "</span>";
                html += "</div>";
                html += " <div class='p-3 button1 text-center text-white mt-3 cursor'>";
                html += "<span>ADD TO CART</span>";
                html += " </div>";
                html += " </div>";
                html += "</div>";

            }
            Literal1.Text = html;


        }
    }
}