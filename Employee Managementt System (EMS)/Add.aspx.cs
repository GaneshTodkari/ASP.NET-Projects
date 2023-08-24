using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Add : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["empConnectionString"].ConnectionString;
    
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            string qry = "select max(empid) from emp_reg ";
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            int id = Convert.ToInt32(dr[0]);
            id++;
            eid.Text = id.ToString();
            con.Close();

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Error: " + ex.Message + "')</script>");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            String sql;
 
            sql = "INSERT INTO emp_reg values('" + eid.Text + "','" + enav.Text + "','" + eemail.Text + "','" + DropDownList1.SelectedItem + "','" + dob.Text + "' ,'" + epd.Text + "', 20, 20,'" + DropDownList1.SelectedValue + "')";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('DataSaved')</script>");
            con.Close();
            enav.Text = "";
            eemail.Text = "";
            eid.Text = "";
            epd.Text = "";
        }
         catch (Exception ex)
        {
            Response.Write("<script>alert('Error: " + ex.Message + "')</script>");
        }
    }
   
}