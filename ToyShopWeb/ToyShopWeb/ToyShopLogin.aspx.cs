using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ToyShopWeb.ServiceReference1;

namespace ToyShopWeb
{
    public partial class ToyShop1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSignin_Click(object sender, EventArgs e)
        {
            Service1Client obj = new Service1Client();
            string Uname = txtemail.Text.Trim();
            string pass = txtpass.Text.Trim();

            string error = "";

            if (Uname == "" && pass == "")
            {
                error = "Enter Username and Password";

            }
            else if (Uname == "")
            {
                error = "Enter Username";
            }
            else if (pass == "")
            {
                error = "Enter Password";
            }
            else if (obj.Login(Uname, pass))
            {
                Response.Redirect("~/HomePage.aspx");
            }
            else
            {
                error = "Username or Password didn't match !";
            }

            lblerror.Text = error;
        }
    }
}