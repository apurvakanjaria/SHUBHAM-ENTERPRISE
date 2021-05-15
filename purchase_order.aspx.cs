using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class purchase_order : System.Web.UI.Page
{
    protected void poins_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("insert into purchase_order values(@po_id,@po_date,@supp_id,@po_total,@status)", con);
        com.Parameters.AddWithValue("@po_id", TextBox1.Text);
        com.Parameters.AddWithValue("@po_date", TextBox2.Text);
        com.Parameters.AddWithValue("@supp_id", TextBox3.Text);
        com.Parameters.AddWithValue("@po_total", TextBox4.Text);
        com.Parameters.AddWithValue("@status", TextBox5.Text);
        if (con.State != System.Data.ConnectionState.Open)
        {
            con.Open();
        }
        com.ExecuteNonQuery();
        SqlDataSource1.DataBind();
        GridView1.DataBind();
    }
    protected void podel_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("delete from purchase_order where po_id=@po_id", con);
        com.Parameters.AddWithValue("@po_id", TextBox1.Text);
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
    protected void poupd_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("update purchase_order set po_date=@po_date,supp_id=@supp_id,po_total=@po_total,status=@status where po_id=@po_id", con);
        com.Parameters.AddWithValue("@po_id", TextBox1.Text);
        com.Parameters.AddWithValue("@po_date", TextBox2.Text);
        com.Parameters.AddWithValue("@supp_id", TextBox3.Text);
        com.Parameters.AddWithValue("@po_total", TextBox4.Text);
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