using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;

public partial class register : System.Web.UI.Page
{


    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {


        con.Open();
        //string continueUrl = RegisterUser.ContinueDestinationPageUrl;
        String query = "INSERT INTO viewers(username,mobileno,email,password) VALUES(@username, @mobileno, @email, @password)";

        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@username", txtUsername.Text);
        cmd.Parameters.AddWithValue("@mobileno", txtMobileNo.Text);
        cmd.Parameters.AddWithValue("@email", txtEmail.Text);
        cmd.Parameters.AddWithValue("@password", txtPassword.Text);
        int userid = Convert.ToInt32(cmd.ExecuteScalar());


        HttpCookie c1 = new HttpCookie("userid", Convert.ToString(userid));
        HttpCookie c2 = new HttpCookie("username", txtUsername.Text);
        Response.Cookies.Add(c1);
        Response.Cookies.Add(c2);

        con.Close();
        // Response.Redirect("~/home.aspx");
        Label1.Visible = true;
        Label1.Text = "Account Created Succesfullly!";


    }
}