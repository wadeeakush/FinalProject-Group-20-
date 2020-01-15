using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dyslaxia
{
    public partial class Lion11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void NextButton_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("Lion12.aspx");
        }



        protected void PrevButtun_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("Lion10.aspx");
        }
    }
}