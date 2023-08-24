using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class delete : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["empConnectionString"].ConnectionString;
   
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(constr);
            string val = search.SelectedValue;
            string qry = " ";
            if (val == "name")
            {

                string ip = TextBox1.Text;

                qry = "select name, empid, role from emp_reg where name LIKE '" + ip + "%' and role <> 'Owner'";

            }
            else if (val == "empid")
            {

                string ip = TextBox1.Text;

                qry = "select name, empid, role from emp_reg where empid = '" + ip + "' and role <> 'Owner'";
            }

          
            SqlDataAdapter ad = new SqlDataAdapter(qry, con);
            DataTable dt = new DataTable();
            ad.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
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
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SqlConnection con = new SqlConnection(constr);
        int row = e.RowIndex;
        int empid = Convert.ToInt32(GridView1.DataKeys[row].Values["empid"]);
        string del = "delete from emp_reg where empid = @empid";
        SqlCommand cmd = new SqlCommand(del, con);
        con.Open();
        cmd.Parameters.AddWithValue("@empid", empid);
        cmd.ExecuteNonQuery();
        GridView1.EditIndex = -1;
        GridView1.DataBind();
  
    }
}