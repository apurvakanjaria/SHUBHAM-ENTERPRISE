using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class customer : System.Web.UI.Page
{
    
    protected void insert_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("select max(c_id)+1 from customer", con);
        if (con.State != System.Data.ConnectionState.Open)
        {
            con.Open();
        }
        int id;
        id= Convert.ToInt32( com.ExecuteScalar());
        

        com = new SqlCommand("insert into customer values(@c_id,@c_name,@c_address,@c_email,@c_password,@c_mobileno,@c_contactperson,@c_contactpersonno)", con);
        com.Parameters.AddWithValue("@c_id", id);
        com.Parameters.AddWithValue("@c_name", TextBox2.Text);
        com.Parameters.AddWithValue("@c_address", TextBox3.Text);
        com.Parameters.AddWithValue("@c_email", TextBox4.Text);
        com.Parameters.AddWithValue("@c_password", TextBox5.Text);
        com.Parameters.AddWithValue("@c_mobileno", TextBox6.Text);
        com.Parameters.AddWithValue("@c_contactperson", TextBox7.Text);
        com.Parameters.AddWithValue("@c_contactpersonno", TextBox8.Text);
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
        SqlCommand com = new SqlCommand("delete from customer where c_id=@c_id", con);
        com.Parameters.AddWithValue("@c_id", TextBox1.Text);
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

    protected void Update_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("update customer set c_id=@c_id,c_name=@c_name,c_address=@c_address,c_email=@c_email,c_password=@c_password,c_mobileno=@c_mobileno,c_contactperson=@c_contactperson,c_contactpersonno=@c_contactpersonno where c_id=@c_id", con);
        com.Parameters.AddWithValue("@c_id", TextBox1.Text);
        com.Parameters.AddWithValue("@c_name", TextBox2.Text);
        com.Parameters.AddWithValue("@c_address", TextBox3.Text);
        com.Parameters.AddWithValue("@c_email", TextBox4.Text);
        com.Parameters.AddWithValue("@c_password", TextBox5.Text);
        com.Parameters.AddWithValue("@c_mobileno", TextBox6.Text);
        com.Parameters.AddWithValue("@c_contactperson", TextBox7.Text);
        com.Parameters.AddWithValue("@c_contactpersonno", TextBox8.Text);
        if (con.State != System.Data.ConnectionState.Open)
        {
            con.Open();
        }
        com.ExecuteNonQuery();
        SqlDataSource1.DataBind();
        GridView1.DataBind();
    }
   
}