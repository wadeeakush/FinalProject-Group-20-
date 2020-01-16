using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dyslaxia
{
    public partial class MainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AboutUsBotton_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("AboutUsPage.aspx");
        }

        protected void LogInButton_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("LogInPage.aspx");
        }

        protected void SignUpButton_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("SignUpPageParent.aspx");
        }

        protected void ContactUsButton_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("ContactUsPage.aspx");
        }
    }
}