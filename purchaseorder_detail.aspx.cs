using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class purchaseorder_detail : System.Web.UI.Page
{


    protected void podins_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("insert into purchaseorder_detail values(@pod_id,@po_id,@i_id,@qty,@amt)", con);
        com.Parameters.AddWithValue("@pod_id", TextBox1.Text);
        com.Parameters.AddWithValue("@po_id", TextBox2.Text);
        com.Parameters.AddWithValue("@i_id", TextBox3.Text);
        com.Parameters.AddWithValue("@qty", TextBox4.Text);
        com.Parameters.AddWithValue("@amt", TextBox5.Text);
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
    protected void poddel_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("delete from purchaseorder_detail where pod_id=@pod_id", con);
        com.Parameters.AddWithValue("@pod_id", TextBox1.Text);
        if (con.State != System.Data.ConnectionState.Open)
        {
            con.Open();
        }
        com.ExecuteNonQuery();
        SqlDataSource1.DataBind();
        GridView1.DataBind();
    }
    protected void podupd_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("update purchaseorder_detail set po_id=@po_id,i_id=@i_id,qty=@qty,amt=@amt where pod_id=@pod_id", con);

        com.Parameters.AddWithValue("@pod_id", TextBox1.Text);
        com.Parameters.AddWithValue("@po_id", TextBox2.Text);
        com.Parameters.AddWithValue("@i_id", TextBox3.Text);
        com.Parameters.AddWithValue("@qty", TextBox4.Text);
        com.Parameters.AddWithValue("@amt", TextBox5.Text);
        if (con.State != System.Data.ConnectionState.Open)
        {
            con.Open();
        }
        com.ExecuteNonQuery();
        SqlDataSource1.DataBind();
        GridView1.DataBind();
    }
}