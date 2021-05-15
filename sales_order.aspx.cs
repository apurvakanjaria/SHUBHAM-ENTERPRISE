using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class sales_order : System.Web.UI.Page
{

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = GridView1.SelectedRow.Cells[1].Text;
        TextBox2.Text = GridView1.SelectedRow.Cells[2].Text;
        TextBox3.Text = GridView1.SelectedRow.Cells[3].Text;
        TextBox4.Text = GridView1.SelectedRow.Cells[4].Text;
        TextBox5.Text = GridView1.SelectedRow.Cells[5].Text;
    
    }
    protected void soins_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("insert into sales_order values(@so_id,@c_id,@so_date,@total_so,@status)", con);
        com.Parameters.AddWithValue("@so_id", TextBox1.Text);
        com.Parameters.AddWithValue("@c_id", TextBox2.Text);
        com.Parameters.AddWithValue("@so_date", TextBox3.Text);
        com.Parameters.AddWithValue("@total_so", TextBox4.Text);
        com.Parameters.AddWithValue("@status", TextBox5.Text);
        if (con.State != System.Data.ConnectionState.Open)
        {
            con.Open();
        }
        com.ExecuteNonQuery();
        SqlDataSource1.DataBind();
        GridView1.DataBind();
    
    }
    protected void sodel_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("delete from sales_order where so_id=@so_id", con);
        com.Parameters.AddWithValue("@so_id", TextBox1.Text);
        if (con.State != System.Data.ConnectionState.Open)
        {
            con.Open();
        }
        com.ExecuteNonQuery();
        SqlDataSource1.DataBind();
        GridView1.DataBind();
    }
    protected void qdupd_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("update sales_order set c_id=@c_id,so_date=@so_date,total_so=@total_so,status=@status where so_id=@so_id", con);
        com.Parameters.AddWithValue("@so_id", TextBox1.Text);
        com.Parameters.AddWithValue("@c_id", TextBox2.Text);
        com.Parameters.AddWithValue("@so_date", TextBox3.Text);
        com.Parameters.AddWithValue("@total_so", TextBox4.Text);
        com.Parameters.AddWithValue("@status", TextBox5.Text);
        if (con.State != System.Data.ConnectionState.Open)
        {
            con.Open();
        }
        com.ExecuteNonQuery();
        SqlDataSource1.DataBind();
        GridView1.DataBind();
    }
}