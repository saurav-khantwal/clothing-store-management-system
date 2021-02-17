using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class signup_page : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //con.Open();
        //SqlCommand cmd = con.CreateCommand();
        //cmd.CommandType = System.Data.CommandType.Text;
        //cmd.CommandText = "insert into tb_signup values('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"')";
        //cmd.ExecuteNonQuery();
        //con.Close();
        //Response.Redirect("login page.aspx");


        SqlConnection con = new SqlConnection("Data Source=LAPTOP-TL897VHG;Initial Catalog=thinknth clothing store;Integrated Security=True;MultipleActiveResultSets=true");
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "SELECT * FROM tb_signup where username=@Username or email=@Email";
        cmd.Parameters.AddWithValue("@Username", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Email", TextBox3.Text);
        cmd.Connection = con;
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            Label1.Visible = true;
            Label1.Text = "Username or Email already taken!";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandType = System.Data.CommandType.Text;
            cmd1.CommandText = "insert into tb_signup values('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"')";
            cmd1.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Insert is successfull')", true);
            con.Close();
            Response.Redirect("login page.aspx");
        }

    }
}