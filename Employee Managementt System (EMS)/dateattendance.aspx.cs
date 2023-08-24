using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class dateattendance : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["empConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void cal_SelectionChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      
            SqlConnection con = new SqlConnection(constr);

            string qry = "SELECT attendance.aid as ATTENDANCEID, CONVERT(DATE, attendance.date) AS DATE, attendance.status AS STATUS, attendance.empid AS ID " +
                         "FROM attendance " +
                         "JOIN emp_reg ON attendance.empid = emp_reg.empid " +
                         "WHERE attendance.date ='" + cal.SelectedDate + "' and role <> 'Owner' ";
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter(qry, con);

            DataTable d = new DataTable();
            ad.Fill(d);

            GridView1.DataSource = d;
            GridView1.DataBind();
            con.Close();
        }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            TableCell remarkCell = e.Row.Cells[1];

            DateTime parsedDateTime;
            if (DateTime.TryParse(remarkCell.Text, out parsedDateTime))
            {
                remarkCell.Text = parsedDateTime.ToString("dd-MM-yyy");
            }
            else
            {

                remarkCell.Text = "Invalid format";
            }
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
   
}