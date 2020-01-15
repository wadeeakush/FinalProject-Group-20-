using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dyslaxia
{
    public partial class Lion23 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void HomeButton_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("KidsPage.aspx");
        }

        protected void PrevButtun_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("Lion22.aspx");
        }
    }
}