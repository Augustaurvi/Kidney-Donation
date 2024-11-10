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
using System.IO;

public partial class reciver : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
   
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        con.Open();
        string path = Server.MapPath("images/");
        if (apic.HasFile)
        {
            string ext = Path.GetExtension(apic.FileName);
           // if (ext == ".jpg" && ext == ".JPG" || ext == ".jpeg" && ext == ".JPEG" || ext == ".PNG" && ext == ".png")
            //{
            apic.SaveAs(path + "images" + apic.FileName);
                string name = "images/ " + apic.FileName;
                String query = "INSERT INTO reciever(userid,rname,gender,mobile,age,email,bloodgp,aadharno,apic,mdissue) VALUES(@userid,@dname,@gender,@mobile,@age,@email,@bloodgp,@aadharno,@apic,@mdissue)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@userid", Convert.ToInt32(Request.Cookies["userid"].Value));
                cmd.Parameters.AddWithValue("@dname", dname.Text);
                cmd.Parameters.AddWithValue("@gender", dgen.Text);
                cmd.Parameters.AddWithValue("@mobile", dMobile.Text);
                cmd.Parameters.AddWithValue("@age", Convert.ToInt32(age.Text));
                cmd.Parameters.AddWithValue("@email", dEmail.Text);
                cmd.Parameters.AddWithValue("@bloodgp", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@aadharno", Convert.ToInt64(aadharno.Text));
                cmd.Parameters.AddWithValue("@apic", apic.FileName);
                cmd.Parameters.AddWithValue("@mdissue", mdissue.Text);
                //int userid = Convert.ToInt32(cmd.ExecuteScalar());
                cmd.ExecuteNonQuery();
                con.Close();
                //Label1.Visible = true;
               // Label1.Text = "please upload adhara card Image in JPG, JPEG or PNG Format.";
               
                Label2.Visible = true;
                Label2.Text = "We Will Contact you Soon!!";


            //}
        }
    }

    
}