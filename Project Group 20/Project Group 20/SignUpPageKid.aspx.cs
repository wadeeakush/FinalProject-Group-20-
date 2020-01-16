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
    public partial class SignUpPageKid : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Command(object sender, CommandEventArgs e)
        {
            Boolean x = true;
            if (Convert.ToInt32(password.Text) != Convert.ToInt32(repassword.Text))
            {
                x = false;
                ErrorMassege.Text = ("Password confirm Wrong!");
            }
            SqlDataAdapter sda = new SqlDataAdapter("SELECT COUNT(*) From [Kids] where UserName='" + username.Text + "'AND Email='" + email.Text + "'", con);

            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows[0][0].ToString() == "1")
            {
                ErrorMassege.Text = ("This username or Email already exists");
                x = false;
            }

            if (x)
            {
                string dat = "Insert into [Kids](UserName,Email,Password) Values('" + username.Text + "','" + email.Text + "','" + password.Text + "')";
                SqlCommand comm = new SqlCommand(dat, con);
                con.Open();
                comm.ExecuteNonQuery();
                con.Close();
                ErrorMassege.Text = ("The kid is Registered now");
            }
            x = true;
        }
    }
}