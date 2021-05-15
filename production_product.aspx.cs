using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class production_product : System.Web.UI.Page
{
    protected void prodins_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("insert into production_product values(@productionproduct_id,@production_id,@productionitem_id,@qty)", con);
        com.Parameters.AddWithValue("@productionproduct_id", TextBox1.Text);
        com.Parameters.AddWithValue("@production_id", TextBox2.Text);
        com.Parameters.AddWithValue("@productionitem_id", TextBox3.Text);
        com.Parameters.AddWithValue("@qty", TextBox4.Text);
        if (con.State != System.Data.ConnectionState.Open)
        {
            con.Open();
        }
        com.ExecuteNonQuery();
        SqlDataSource1.DataBind();
        GridView1.DataBind();

    }
    protected void proddel_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("delete from production_product where productionproduct_id=@pproductionproduct_id", con);
        com.Parameters.AddWithValue("@productionproduct_id", TextBox1.Text);
        if (con.State != System.Data.ConnectionState.Open)
        {
            con.Open();
        }
        com.ExecuteNonQuery();
        SqlDataSource1.DataBind();
        GridView1.DataBind();

    }
    protected void produpd_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("update  production_product set productionproduct_id=@productionproduct_id,production_id=@production_id,productitem_id=@productitem_id,qty=@qty, where productionproduct_id=@productionproduct_id", con);
        com.Parameters.AddWithValue("@ productionproduct_id", TextBox1.Text);
        com.Parameters.AddWithValue("@production_id", TextBox2.Text);
        com.Parameters.AddWithValue("@productitem_id", TextBox3.Text);
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