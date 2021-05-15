using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class clogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
      
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com = new SqlCommand("select * from customer where c_email=@p1 and c_password=@p2", con);
        com.Parameters.AddWithValue("@p1",username.Text);
        com.Parameters.AddWithValue("@p2", password.Text);
        if (con.State != System.Data.ConnectionState.Open)
        {
            con.Open();
        }  
        SqlDataAdapter adp = new SqlDataAdapter(com);
        DataTable dt = new DataTable();
        adp.Fill(dt);
 
        int id=0;
        int id2;
        id = Convert.ToInt32(com.ExecuteScalar());
        if (dt.Rows.Count == 1)
        {
            Session["cid"] = dt.Rows[0]["c_id"];
          
                Response.Redirect("~/visitor/home.aspx");
            
        }
        else
        {
            Response.Write("<script>alert('Insert valid Username And Passwpord')</script>");
        }
    }
}