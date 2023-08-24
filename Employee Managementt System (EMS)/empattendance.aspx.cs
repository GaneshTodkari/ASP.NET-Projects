using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class empattendance : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["empConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(constr);

            string id = (string)Session["id"];

            string qry = "SELECT attendance.aid, attendance.date, attendance.status, attendance.empid, emp_reg.name " + "FROM attendance " + "JOIN emp_reg ON attendance.empid = emp_reg.empid " +
                         "WHERE attendance.empid  = '" + id + "'";
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter(qry, con);

            DataTable d = new DataTable();
            ad.Fill(d);

            GridView1.DataSource = d;
            GridView1.DataBind();
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Error: " + ex.Message + "')</script>");
        }
    }
    protected void search_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
   
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}