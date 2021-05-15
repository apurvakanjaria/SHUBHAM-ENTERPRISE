using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class item_costingdetails : System.Web.UI.Page
{
   
    protected void icdins_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("insert into supplier values(@icd_id,@ic_id,@part_id,@qty,@cost)", con);
        com.Parameters.AddWithValue("@icd_id", TextBox1.Text);
        com.Parameters.AddWithValue("@ic_id", TextBox2.Text);
        com.Parameters.AddWithValue("@part_id", TextBox3.Text);
        com.Parameters.AddWithValue("@qty", TextBox4.Text);
        com.Parameters.AddWithValue("@cost", TextBox5.Text);
        if (con.State != System.Data.ConnectionState.Open)
        {
            con.Open();
        }
        com.ExecuteNonQuery();
        SqlDataSource1.DataBind();
        GridView1.DataBind();
    }
    protected void icddel_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("delete from item_costingdetails where icd_id=@icd_id", con);
        com.Parameters.AddWithValue("@icd_id", TextBox1.Text);
        if (con.State != System.Data.ConnectionState.Open)
        {
            con.Open();
        }
        com.ExecuteNonQuery();
        SqlDataSource1.DataBind();
        GridView1.DataBind();
    }
    protected void icdupd_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("update item_costingdetails set icd_id=@icd_id,ic_id=@ic_id,qty=@qty,cost=@cost where icd_id=@icd_id", con);
        com.Parameters.AddWithValue("@icd_id", TextBox1.Text);
        com.Parameters.AddWithValue("@ic_id", TextBox2.Text);
        com.Parameters.AddWithValue("@part_id", TextBox3.Text);
        com.Parameters.AddWithValue("@qty", TextBox4.Text);
        com.Parameters.AddWithValue("@cost", TextBox5.Text);
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
    }
}