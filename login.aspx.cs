using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

public partial class login : System.Web.UI.Page
{


    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (uname.Text == "Admin" && Pass.Text == "Mohit")
        {
            HttpCookie c2 = new HttpCookie("username", uname.Text);
            Response.Cookies.Add(c2);
            Response.Redirect("~/admin.aspx");

        }

        String pass = Pass.Text;
        String usernm = uname.Text;
        con.Open();
        cmd = new SqlCommand("SELECT userid,password FROM viewers WHERE username=@username AND password=@password", con);
        cmd.Parameters.AddWithValue("@username", uname.Text);
        cmd.Parameters.AddWithValue("@password", Pass.Text);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            HttpCookie c1 = new HttpCookie("userid", Convert.ToString(dr["userid"]));
            HttpCookie c2 = new HttpCookie("username", usernm);
            Response.Cookies.Add(c1);
            Response.Cookies.Add(c2);
            Response.Redirect("~/home.aspx");
        }
        else
        {
            Label1.Visible = true;

            Label1.Text = "Username or Password Incorrect!!!";
        }
    }
}