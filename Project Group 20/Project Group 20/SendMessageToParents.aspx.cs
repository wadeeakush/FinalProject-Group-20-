using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Dyslaxia
{
    public partial class SendMessageToParents : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SendMessage_Command(object sender, CommandEventArgs e)
        {
            string dat = "Insert into [MessagesFromAdminToParents](UserName,Message) Values('" + ParentUserName.Text + "','" + MassegeToParent.Text + "')";
            SqlCommand comm = new SqlCommand(dat, con);
            con.Open();
            comm.ExecuteNonQuery();
            con.Close();
            Response.Redirect("AdminPage.aspx");
        }
    }
}