using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Media;

namespace Dyslaxia
{
    public partial class Lion1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void NextButton_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("Lion2.aspx");
        }

        protected void PlayButton_Command(object sender, CommandEventArgs e)
        {
            SoundPlayer splayer = new SoundPlayer(@"C:\Users\Wadeea Abukush\Dyslaxia\Dyslaxia\Sounds\1.wav");
            splayer.Play();
        }
    }
}