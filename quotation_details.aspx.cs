using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class quotation_details : System.Web.UI.Page
{
    protected void qdins_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("insert into quotaion_details values(@qd_id,@q_id,@i_id,@i_qty,@i_price)", con);
        com.Parameters.AddWithValue("@qd_id", TextBox1.Text);
        com.Parameters.AddWithValue("@q_id", TextBox2.Text);
        com.Parameters.AddWithValue("@i_id", TextBox3.Text);
        com.Parameters.AddWithValue("@i_qty", TextBox4.Text);
        com.Parameters.AddWithValue("@i_price", TextBox5.Text);
        if (con.State != System.Data.ConnectionState.Open)
        {
            con.Open();
        }
        com.ExecuteNonQuery();
        SqlDataSource1.DataBind();
        GridView1.DataBind();
    }
    protected void qddel_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("delete from quotaion_details where qd_id=@qd_id", con);
        com.Parameters.AddWithValue("@qd_id", TextBox1.Text);
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
        SqlCommand com = new SqlCommand("update quotaion_details set q_id=@q_id,i_id=@i_id,i_qty=@i_qty,i_price=@i_price where qd_id=@qd_id", con);

        com.Parameters.AddWithValue("@qd_id", TextBox1.Text);
        com.Parameters.AddWithValue("@q_id", TextBox2.Text);
        com.Parameters.AddWithValue("@i_id", TextBox3.Text);
        com.Parameters.AddWithValue("@i_qty", TextBox4.Text);
        com.Parameters.AddWithValue("@i_price", TextBox5.Text);
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