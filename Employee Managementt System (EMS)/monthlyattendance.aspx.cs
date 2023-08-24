using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class monthlyattendance : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["empConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(constr);
        
        string qry = "SELECT attendance.aid as ATTENDANCEID, CONVERT(DATE, attendance.date) AS DATE, attendance.status AS STATUS, attendance.empid AS ID, emp_reg.name AS NAME " +
                     "FROM attendance " +
                     "JOIN emp_reg ON attendance.empid = emp_reg.empid " +
                     "WHERE Month(attendance.date) = @Month AND Year(attendance.date) = @Year";

        SqlDataAdapter ad = new SqlDataAdapter(qry, con);
        ad.SelectCommand.Parameters.AddWithValue("@Month", month.Text);
        ad.SelectCommand.Parameters.AddWithValue("@Year", year.Text);

     
        DataTable d = new DataTable();
        ad.Fill(d);

        GridView1.DataSource = d;
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
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
