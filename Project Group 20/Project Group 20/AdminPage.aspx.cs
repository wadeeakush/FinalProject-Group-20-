using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dyslaxia
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void KidsList_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("KidsListPage.aspx");
        }

        protected void ParentList_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("ParentsListPage.aspx");
        }

        protected void ContactUsMessages_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("ContactUsList.aspx");
        }

        protected void WishListPage_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("WishListDisplay.aspx");
        }

        protected void SendMessageToParents_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("SendMessageToParents.aspx");
        }

        protected void FeedBackListPage_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("FeedBacksList.aspx");
        }

        protected void RPList_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("RecoverPasswordList.aspx");
        }
    }
}