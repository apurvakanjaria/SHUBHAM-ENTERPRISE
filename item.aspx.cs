using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class item : System.Web.UI.Page
{
   

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("insert into item values(@i_id,@i_name,@i_price,@i_size,@i_capacity,@type_id,@i_image)", con);
        com.Parameters.AddWithValue("@i_id", TextBox1.Text);
        com.Parameters.AddWithValue("@i_name", TextBox2.Text);
        com.Parameters.AddWithValue("@i_price", TextBox3.Text);
        com.Parameters.AddWithValue("@i_size", TextBox4.Text);
        com.Parameters.AddWithValue("@i_capacity", TextBox5.Text);
        com.Parameters.AddWithValue("@type_id", TextBox6.Text);
        com.Parameters.AddWithValue("@i_image", TextBox7.Text);
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
        TextBox7.Text = GridView1.SelectedRow.Cells[7].Text;
    }
    protected void itemdel_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("delete from item where i_id=@i_id", con);
        com.Parameters.AddWithValue("@i_id", TextBox1.Text);
        if (con.State != System.Data.ConnectionState.Open)
        {
            con.Open();
        }
        com.ExecuteNonQuery();
        SqlDataSource1.DataBind();
        GridView1.DataBind();
    }
    protected void itemupd_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("update item set i_name=@i_name,i_price=@i_price,i_size=@i_size,i_capacity=@i_capacity,type_id=@type_id,i_image=@i_image where i_id=@i_id", con);
        com.Parameters.AddWithValue("@i_id", TextBox1.Text);
        com.Parameters.AddWithValue("@i_name", TextBox2.Text);
        com.Parameters.AddWithValue("@i_price", TextBox3.Text);
        com.Parameters.AddWithValue("@i_size", TextBox4.Text);
        com.Parameters.AddWithValue("@i_capacity", TextBox5.Text);
        com.Parameters.AddWithValue("@type_id", TextBox6.Text);
        com.Parameters.AddWithValue("@i_image", TextBox7.Text);
        
        if (con.State != System.Data.ConnectionState.Open)
        {
            con.Open();
        }
        com.ExecuteNonQuery();
        SqlDataSource1.DataBind();
        GridView1.DataBind();
    }
}