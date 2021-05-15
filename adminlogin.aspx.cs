using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class adminlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\slsolution.mdf;Integrated Security=True;User Instance=True");
        SqlDataAdapter adp = new SqlDataAdapter("select * from login where email=@p1 and pass=@p2", con);
        DataSet ds = new DataSet();
        adp.SelectCommand.Parameters.AddWithValue("@p1", txtusername.Text);
        adp.SelectCommand.Parameters.AddWithValue("@p2", TextBox1.Text);

        adp.Fill(ds, "login");
        if (ds.Tables["login"].Rows.Count > 0)
        {
            Session["admin"] = ds.Tables["login"].Rows[0]["Lname"];
            Response.Redirect("~/default.aspx");
        }

    }
}