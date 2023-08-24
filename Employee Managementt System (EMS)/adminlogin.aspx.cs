using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class adminlogin : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["empConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
     try{
        SqlConnection con = new SqlConnection(constr);
        string q = "select empid, name, password from emp_reg where empid ='" + idtxt.Text + "' and  password='" + pdtxt.Text + "' and (role= 'HR' or role = 'Owner')";
        SqlDataAdapter ad = new SqlDataAdapter(q, con);
        DataTable dt = new DataTable();
        ad.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Response.Redirect("adminhome.aspx");
        }
        else
        {
            Response.Write("<script>alert('Invalid Login Details')</script>");
        }
        idtxt.Text = "";
        pdtxt.Text = "";
    }
            catch (Exception ex)
        {
            Response.Write("<script>alert('Error: " + ex.Message + "')</script>");
        }
    }
    protected void idtxt_TextChanged(object sender, EventArgs e)
    {

    }
}