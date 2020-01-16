using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Dyslaxia
{
    public partial class LogInParent : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LogInButton_Command(object sender, CommandEventArgs e)
        {
            SqlDataAdapter sda = new SqlDataAdapter("SELECT COUNT(*) From [Parents] where UserName='" + UserNameLogIn.Text + "'AND Password='" + PasswordLogIn.Text + "'", con);

            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows[0][0].ToString() == "1")
            {
                Response.Redirect("ParentsPage.aspx");
            }
            else { ErrorMassege.Text = ("You Are Not Registered!!!!"); }
        }

        protected void FPButton_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("RPParents.aspx");
        }
    }
}