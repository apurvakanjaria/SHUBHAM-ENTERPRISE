using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class supp : System.Web.UI.Page
{
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("insert into supplier values(@suppid,@supp_name,@supp_email,@supp_pwd,@supp_cno,@supp_address)", con);
        com.Parameters.AddWithValue("@suppid", TextBox1.Text);
        com.Parameters.AddWithValue("@supp_name", TextBox2.Text);
        com.Parameters.AddWithValue("@supp_email", TextBox3.Text);
        com.Parameters.AddWithValue("@supp_pwd", TextBox4.Text);
        com.Parameters.AddWithValue("@supp_cno", TextBox5.Text);
        com.Parameters.AddWithValue("@supp_address", TextBox6.Text);
        if (con.State != System.Data.ConnectionState.Open)
        {
            con.Open();
        }
        com.ExecuteNonQuery();
        SqlDataSource1.DataBind();
        GridView1.DataBind();
    }
    protected void suppdel_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("delete from supplier where supp_id=@suppid", con);
        com.Parameters.AddWithValue("@suppid", TextBox1.Text);
        if (con.State != System.Data.ConnectionState.Open)
        {
            con.Open();
        }
        com.ExecuteNonQuery();
        SqlDataSource1.DataBind();
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = GridView1.SelectedRow.Cells[1].Text;
        TextBox2.Text = GridView1.SelectedRow.Cells[2].Text;
        TextBox3.Text = GridView1.SelectedRow.Cells[3].Text;
        TextBox4.Text = GridView1.SelectedRow.Cells[4].Text;
        TextBox5.Text = GridView1.SelectedRow.Cells[5].Text;
        TextBox6.Text = GridView1.SelectedRow.Cells[6].Text;

    }
    protected void suppupd_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("update supplier set supp_name=@supp_name,supp_email=@supp_email,supp_pwd=@supp_pwd,supp_cno=@supp_cno,supp_address=@supp_address where supp_id=@suppid", con);
        com.Parameters.AddWithValue("@suppid", TextBox1.Text);
        com.Parameters.AddWithValue("@supp_name", TextBox2.Text);
        com.Parameters.AddWithValue("@supp_email", TextBox3.Text);
        com.Parameters.AddWithValue("@supp_pwd", TextBox4.Text);
        com.Parameters.AddWithValue("@supp_cno", TextBox5.Text);
        com.Parameters.AddWithValue("@supp_address", TextBox6.Text);
        if (con.State != System.Data.ConnectionState.Open)
        {
            con.Open();
        }   
        com.ExecuteNonQuery();
        SqlDataSource1.DataBind();
        GridView1.DataBind();
    }

}