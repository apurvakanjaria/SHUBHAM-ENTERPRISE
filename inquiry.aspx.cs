using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class inquiry : System.Web.UI.Page
{
    
    protected void inqins_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("insert into inquiry values(@inq_id,@c_id,@inq_detail,@inq_status)", con);
        com.Parameters.AddWithValue("@inq_id", TextBox1.Text);
        com.Parameters.AddWithValue("@c_id", DropDownList1.SelectedValue);
        com.Parameters.AddWithValue("@inq_detail", TextBox3.Text);
        com.Parameters.AddWithValue("@inq_status", TextBox4.Text);
        if (con.State != System.Data.ConnectionState.Open)
        {
            con.Open();
        }
        com.ExecuteNonQuery();
        SqlDataSource1.DataBind();
        GridView1.DataBind();
    }
  
    protected void inqdel_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("delete from inquiry where inq_id=@inq_id", con);
        com.Parameters.AddWithValue("@inq_id", TextBox1.Text);
        if (con.State != System.Data.ConnectionState.Open)
        {
            con.Open();
        }
        com.ExecuteNonQuery();
        SqlDataSource1.DataBind();
        GridView1.DataBind();
    }
    protected void inqupd_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("update inquiry set inq_id=@inq_id,c_id=@c_id,inq_details=@inq_details,inq_status=@inq_status where inq_id=@inq_id", con);
        com.Parameters.AddWithValue("@inq_id", TextBox1.Text);
        com.Parameters.AddWithValue("@c_id", DropDownList1.SelectedValue);
        com.Parameters.AddWithValue("@inq_details", TextBox3.Text);
        com.Parameters.AddWithValue("@inq_status", TextBox4.Text);
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
        DropDownList1.SelectedValue = GridView1.SelectedRow.Cells[2].Text;
        TextBox3.Text = GridView1.SelectedRow.Cells[3].Text;
        TextBox4.Text = GridView1.SelectedRow.Cells[4].Text;
    }
}