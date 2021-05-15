using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class item_costing : System.Web.UI.Page
{
   
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = GridView1.SelectedRow.Cells[1].Text;
        TextBox2.Text = GridView1.SelectedRow.Cells[2].Text;
        TextBox3.Text = GridView1.SelectedRow.Cells[3].Text;
        TextBox4.Text = GridView1.SelectedRow.Cells[4].Text;
    }
    protected void icins_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("insert into item_costing values(@ic_id,@inq_id,@i_id,@cost)", con);
        com.Parameters.AddWithValue("@ic_id", TextBox1.Text);
        com.Parameters.AddWithValue("@inq_id", TextBox2.Text);
        com.Parameters.AddWithValue("@i_id", TextBox3.Text);
        com.Parameters.AddWithValue("@cost", TextBox4.Text);
        if (con.State != System.Data.ConnectionState.Open)
        {
            con.Open();
        }
        com.ExecuteNonQuery();
        SqlDataSource1.DataBind();
        GridView1.DataBind();
    }
    protected void icdel_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("delete from item_costing where ic_id=@ic_id", con);
        com.Parameters.AddWithValue("@ic_id", TextBox1.Text);
        if (con.State != System.Data.ConnectionState.Open)
        {
            con.Open();
        }
        com.ExecuteNonQuery();
        SqlDataSource1.DataBind();
        GridView1.DataBind();
    }
    protected void icupd_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("update item_costing set ic_id=@ic_id,inq_id=@inq_id,i_id=@i_id,cost=@cost where i_id=@i_id", con);
        com.Parameters.AddWithValue("@ic_id", TextBox1.Text);
        com.Parameters.AddWithValue("@inq_id", TextBox2.Text);
        com.Parameters.AddWithValue("@i_id", TextBox3.Text);
        com.Parameters.AddWithValue("@cost", TextBox4.Text);
        if (con.State != System.Data.ConnectionState.Open)
        {
            con.Open();
        }
        com.ExecuteNonQuery();
        SqlDataSource1.DataBind();
        GridView1.DataBind();
    }
}