using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dyslaxia
{
    public partial class LogInPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LogInKidButton_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("LogInKid.aspx");
        }

        protected void LogInParentButton_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("LogInParent.aspx");
        }

        protected void LogInAdminButton_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("LogInAdmin.aspx");
        }
    }
}