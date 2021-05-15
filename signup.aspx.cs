using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsignup_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("select max(c_id)+1 from customer", con);
        if (con.State != System.Data.ConnectionState.Open)
        {
            con.Open();
        }
        int id;
        id = Convert.ToInt32(com.ExecuteScalar());


        com = new SqlCommand("insert into customer values(@c_id,@c_name,@c_address,@c_email,@c_password,@c_mobileno,@c_contactperson,@c_contactpersonno)", con);
        com.Parameters.AddWithValue("@c_id", id);
        com.Parameters.AddWithValue("@c_name", txtcname.Text);
        com.Parameters.AddWithValue("@c_address", txtcadd.Text);
        com.Parameters.AddWithValue("@c_email", txtcemail.Text);
        com.Parameters.AddWithValue("@c_password", txtpass.Text);
        com.Parameters.AddWithValue("@c_mobileno", cmno.Text);
        com.Parameters.AddWithValue("@c_contactperson", txtccpname.Text);
        com.Parameters.AddWithValue("@c_contactpersonno", txtccpno.Text);
        if (con.State != System.Data.ConnectionState.Open)
        {
            con.Open();
        }
        com.ExecuteNonQuery();
     }
}