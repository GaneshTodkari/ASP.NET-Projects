using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class empmstr : System.Web.UI.MasterPage
{
    string constr = ConfigurationManager.ConnectionStrings["empConnectionString"].ConnectionString;
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void home_Click(object sender, EventArgs e)
    {

    }
    protected void logout_Click(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        {
            SqlConnection con = new SqlConnection(constr);
            DateTime logout = DateTime.Now;
            con.Open();
            int attid = (Int32)Session["aid"];
            string qry = "update attendance set logout ='" + logout + "' where aid = @attid ";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@attid", attid);
            cmd.ExecuteNonQuery();
            Response.Redirect("home.aspx");
        }      
    }
}
