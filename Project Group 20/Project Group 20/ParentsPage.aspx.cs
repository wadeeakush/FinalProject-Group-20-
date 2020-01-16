using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Dyslaxia
{
    public partial class ParentsPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignUpMyKidBottun_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("SignUpPageKid.aspx");
        }

        protected void StoryWishButton_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("WishStoryPage.aspx");
        }

        protected void SendFeedBack_Command(object sender, CommandEventArgs e)
        {
            string dat = "Insert into [FeedBacks](Feedback) Values('" + FeedBack.Text + "')";
            SqlCommand comm = new SqlCommand(dat, con);
            con.Open();
            comm.ExecuteNonQuery();
            con.Close();
            Label1.Text = ("Your FeedBack Has Been Sent, Thank YOU");
        }

        protected void MessagesFromAdmin_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("MessagesFromAdmin.aspx");
        }
    }
}