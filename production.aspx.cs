using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class production : System.Web.UI.Page
{
   
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = GridView1.SelectedRow.Cells[1].Text;
        TextBox2.Text = GridView1.SelectedRow.Cells[2].Text;
        TextBox3.Text = GridView1.SelectedRow.Cells[3].Text;
    }
    protected void proins_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("insert into production values(@production_id,@production_date,@production_description)", con);
        com.Parameters.AddWithValue("@production_id", TextBox1.Text);
        com.Parameters.AddWithValue("@production_date", TextBox2.Text);
        com.Parameters.AddWithValue("@production_description", TextBox3.Text);
        if (con.State != System.Data.ConnectionState.Open)
        {
            con.Open();
        }
        com.ExecuteNonQuery();
        SqlDataSource1.DataBind();
        GridView1.DataBind();

    }
    protected void prodel_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("delete frrom production where production_id=@production_id", con);
        com.Parameters.AddWithValue("production_id", TextBox1.Text);
        if (con.State != System.Data.ConnectionState.Open)
        {
            con.Open();
        }
        com.ExecuteNonQuery();
        SqlDataSource1.DataBind();
        GridView1.DataBind();

    }
    protected void proupd_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("update production set @production_id,@production_date,@production_description where production_id=@production_id", con);
        com.Parameters.AddWithValue(" @production_id", TextBox1.Text);
        com.Parameters.AddWithValue("@production_date", TextBox2.Text);
        com.Parameters.AddWithValue("@production_description", TextBox3.Text);
        if (con.State != System.Data.ConnectionState.Open)
        {
            con.Open();
        }
        com.ExecuteNonQuery();
        SqlDataSource1.DataBind();
        GridView1.DataBind();
    }
}