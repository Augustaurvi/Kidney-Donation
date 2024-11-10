using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class reciverlist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        HttpCookie c2 = new HttpCookie("username");
        // c1.Expires = DateTime.Now.AddSeconds(0);
        c2.Expires = DateTime.Now.AddSeconds(0);
        Response.Redirect("login.aspx");


    }
}