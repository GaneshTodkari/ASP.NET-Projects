using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class andimempatt : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["empConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void search_SelectedIndexChanged(object sender, EventArgs e)
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

                qry = "SELECT attendance.aid as ATTENDANCEID, CONVERT(DATE, attendance.date) AS DATE, attendance.status AS STATUS, attendance.empid AS ID " +
                    "FROM attendance " + "JOIN emp_reg ON attendance.empid = emp_reg.empid " + "WHERE emp_reg.name LIKE '" + ip + "%'";

            }
            else if (val == "empid")
            {

                string ip = TextBox1.Text;


                qry = "SELECT attendance.aid as ATTENDANCEID, CONVERT(DATE, attendance.date) AS DATE, attendance.status AS STATUS, attendance.empid AS ID " + "FROM attendance " + "JOIN emp_reg ON attendance.empid = emp_reg.empid " +
                             "WHERE attendance.empid  = '" + ip + "'";
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
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            TableCell remarkCell = e.Row.Cells[1];

            DateTime parsedDateTime;
            if (DateTime.TryParse(remarkCell.Text, out parsedDateTime))
            {
                remarkCell.Text = parsedDateTime.ToString("dd-MM-yyyy");
            }
            else
            {
                remarkCell.Text = "Invalid format";
            }
        }
    }
}