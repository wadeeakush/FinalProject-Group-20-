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
    public partial class RPParents : System.Web.UI.Page
    {
        private DataTable dt;
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void PasswordRecButton_Command1(object sender, CommandEventArgs e)
        {
            SqlDataAdapter sda = new SqlDataAdapter("SELECT COUNT(*) From [Parents] where UserName='" + UserNameRecover.Text + "'", con);
            
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows[0][0].ToString() == "1")
            {
                string dat = "Insert into [RPTable](UserName) Values('" + UserNameRecover.Text + "')";
                SqlCommand comm = new SqlCommand(dat, con);
                con.Open();
                comm.ExecuteNonQuery();
                con.Close();
                Label1.Text = ("You Will Recive Email in 24 Hours on your Email With Your Password");
            }
            else
            {
                Label1.Text = ("You Not Exist");
            }
        }
    }
}