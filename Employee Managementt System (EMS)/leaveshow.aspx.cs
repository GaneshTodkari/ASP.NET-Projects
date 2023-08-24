using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class leavestatus2 : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["empConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        string id = (string)Session["id"];
        
            string qry = "select * from leavemanage where empid ='" + id + "'";
            SqlDataAdapter da = new SqlDataAdapter(qry, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            GridView1.DataSource = dt;
            GridView1.DataBind();
      

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
           
            TableCell remarkCell = e.Row.Cells[6]; 
           
            DateTime parsedDateTime;
            if (DateTime.TryParse(remarkCell.Text, out parsedDateTime))
            {
                remarkCell.Text = parsedDateTime.ToString("hh:mm");
            }
            else
            {
               
                remarkCell.Text = "Invalid format";
            }
        }
    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}