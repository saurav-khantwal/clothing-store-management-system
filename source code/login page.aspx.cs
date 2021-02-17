using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class login_page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-TL897VHG;Initial Catalog=thinknth clothing store;Integrated Security=True;MultipleActiveResultSets=true");
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "SELECT * FROM tb_signup where username=@Username and password=@Password";
        cmd.Parameters.AddWithValue("@Username", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
        cmd.Connection = con;
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            Response.Redirect("Main-app.aspx");
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Invalid Username or Password!";
            Label1.ForeColor = System.Drawing.Color.Red;
        }

       
    }


}