using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class inquiry_details : System.Web.UI.Page
{
   
    protected void inqdetailins_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("insert into inquiry_details values(@inq_id,@i_id,@i_size,@i_capacity,@qty,@i_rate,@inq_details)", con);
        com.Parameters.AddWithValue("@inqd_id", TextBox1.Text);
        com.Parameters.AddWithValue("@inq_id", TextBox2.Text);
        com.Parameters.AddWithValue("@i_id", TextBox3.Text);
        com.Parameters.AddWithValue("@i_size", TextBox4.Text);
        com.Parameters.AddWithValue("@i_capacity", TextBox5.Text);
        com.Parameters.AddWithValue("@qty", TextBox6.Text);
        com.Parameters.AddWithValue("@i_rate", TextBox7.Text);
        com.Parameters.AddWithValue("@inq_details", TextBox8.Text);

        if (con.State != System.Data.ConnectionState.Open)
        {
            con.Open();
        }
        com.ExecuteNonQuery();
        SqlDataSource1.DataBind();
        GridView1.DataBind();
    }



    protected void inqdetaildel_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("delete from inquiry where inqd_id=@inqd_id", con);
        com.Parameters.AddWithValue("@inqd_id", TextBox1.Text);
        if (con.State != System.Data.ConnectionState.Open)
        {
            con.Open();
        }
        com.ExecuteNonQuery();
        SqlDataSource1.DataBind();
        GridView1.DataBind();
    }
    protected void inqdupd_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("update supplier set inqd_id=@inqd_id,inq_id=@inq_id,i_id=@i_id,i_size=@i_size,i_capacity=@i_capacity,qty=@qty,i_rate=@i_rate,inq_details=@inq_details where inqd_id=@inqd_id", con);
        com.Parameters.AddWithValue("@inqd_id", TextBox1.Text);
        com.Parameters.AddWithValue("@inq_id", TextBox2.Text);
        com.Parameters.AddWithValue("@i_id", TextBox3.Text);
        com.Parameters.AddWithValue("@i_size", TextBox4.Text);
        com.Parameters.AddWithValue("@i_capacity", TextBox5.Text);
        com.Parameters.AddWithValue("@qty", TextBox6.Text);
        com.Parameters.AddWithValue("@i_rate", TextBox7.Text);
        com.Parameters.AddWithValue("@inq_details", TextBox8.Text);
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
        TextBox8.Text = GridView1.SelectedRow.Cells[8].Text;
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("select * from item where i_id=@p1 ", con);
        if (con.State != System.Data.ConnectionState.Open)
        {
            con.Open();
        }
        com.Parameters.AddWithValue("p1", DropDownList1.SelectedValue);
        SqlDataAdapter adp = new SqlDataAdapter(com);
        DataSet ds = new DataSet();
        adp.Fill(ds, "item");
        TextBox3.Text = ds.Tables["item"].Rows[0]["i_id"].ToString();
        TextBox4.Text = ds.Tables["item"].Rows[0]["i_size"].ToString();
        TextBox5.Text = ds.Tables["item"].Rows[0]["i_capacity"].ToString();
        TextBox7.Text = ds.Tables["item"].Rows[0]["i_price"].ToString();
    }

    protected void btnadd_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("select MAX(inq_id) from inquiry ", con);
        if (con.State != System.Data.ConnectionState.Open)
        {
            con.Open();
        }
        TextBox2.Text = Convert.ToString(com.ExecuteScalar());

    }
}