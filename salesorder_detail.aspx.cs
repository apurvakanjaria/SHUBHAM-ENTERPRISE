using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class salesorder_detail : System.Web.UI.Page
{

    protected void sodins_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("insert into salesorder_detail values(@sod_id,@so_id,@i_id,@qty,@rate)", con);
        com.Parameters.AddWithValue("@sod_id", TextBox1.Text);
        com.Parameters.AddWithValue("@so_id", TextBox2.Text);
        com.Parameters.AddWithValue("@i_id", TextBox3.Text);
        com.Parameters.AddWithValue("@qty", TextBox4.Text);
        com.Parameters.AddWithValue("@rate", TextBox5.Text);
        if (con.State != System.Data.ConnectionState.Open)
        {
            con.Open();
        }
        com.ExecuteNonQuery();
        SqlDataSource1.DataBind();
        GridView1.DataBind();
    
    
    }
    protected void Delete_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("delete from salesorder_detail where sod_id=@sod_id", con);
        com.Parameters.AddWithValue("@sod_id", TextBox1.Text);
        if (con.State != System.Data.ConnectionState.Open)
        {
            con.Open();
        }
        com.ExecuteNonQuery();
        SqlDataSource1.DataBind();
        GridView1.DataBind();
    }
    protected void sodupd_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("update sales_order set so_id=@so_id,i_id=@i_id,qty=@qty,rate=@rate where sod_id=@sod_id", con);

        com.Parameters.AddWithValue("@sod_id", TextBox1.Text);
        com.Parameters.AddWithValue("@so_id", TextBox2.Text);
        com.Parameters.AddWithValue("@i_id", TextBox3.Text);
        com.Parameters.AddWithValue("@qty", TextBox4.Text);
        com.Parameters.AddWithValue("@rate", TextBox5.Text);
        if (con.State != System.Data.ConnectionState.Open)
        {
            con.Open();
        }
        com.ExecuteNonQuery();
        SqlDataSource1.DataBind();
        GridView1.DataBind();
    }
}