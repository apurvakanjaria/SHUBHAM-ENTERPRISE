using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class production_part : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void proins_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("insert into production_part values(@productionpart_id,@production_id,@part_id,@qty)", con);
        com.Parameters.AddWithValue("@productionpart_id", TextBox1.Text);
        com.Parameters.AddWithValue("@production_id", TextBox2.Text);
        com.Parameters.AddWithValue("@part_id", TextBox3.Text);
        com.Parameters.AddWithValue("@qty", TextBox4.Text);
        if (con.State != System.Data.ConnectionState.Open)
        {
            con.Open();
        }
        com.ExecuteNonQuery();
        SqlDataSource1.DataBind();
        GridView1.DataBind();

    }
    protected void prodel_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("delete from production_part where productionpart_id=@productionpart_id", con);
        com.Parameters.AddWithValue("@productionpart_id", TextBox1.Text);
        if (con.State != System.Data.ConnectionState.Open)
        {
            con.Open();
        }
        com.ExecuteNonQuery();
        SqlDataSource1.DataBind();
        GridView1.DataBind();

    }
    protected void proupd_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("update  production_part set productionpart_id=@productionpart_id,production_id=@production_id,part_id=@part_id,qty=@qty, where productionpart_id=@productionpart_id", con);
        com.Parameters.AddWithValue("@productionpart_id", TextBox1.Text);
        com.Parameters.AddWithValue("@production_id", TextBox2.Text);
        com.Parameters.AddWithValue("@part_id", TextBox3.Text);
        com.Parameters.AddWithValue("@qty", TextBox4.Text);
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

    }
}