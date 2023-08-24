using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Globalization;

public partial class leavestatus : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["empConnectionString"].ConnectionString;
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        SqlConnection con = new SqlConnection(constr);
        if (e.CommandName == "approve")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow rw = GridView1.Rows[index];
            string lid = rw.Cells[0].Text;
            string empid = rw.Cells[1].Text;
            DateTime start = DateTime.ParseExact(rw.Cells[3].Text,"dd-MM-yyyy",CultureInfo.InvariantCulture);
            DateTime end = DateTime.ParseExact(rw.Cells[4].Text,"dd-MM-yyyy",CultureInfo.InvariantCulture);
            DateTime remark = DateTime.Now;

            con.Open();
          
            string qry = "update leavemanage SET status = 'Approved', remark = @rm where leaveid = @lid";
            
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@lid", lid);
            cmd.Parameters.AddWithValue("@rm", remark);
            cmd.ExecuteNonQuery();
            GridView1.DataBind();

            TimeSpan diff = end.Subtract(start);
            int val = diff.Days;

            string tleave = "select totelleaves from emp_reg where empid='"+ empid +"'";
            SqlCommand tl = new SqlCommand(tleave, con);
            
            int total = Convert.ToInt32(tl.ExecuteScalar());
            int remain = total - val;


            string qry2 = "update emp_reg set remainingleaves ='" + remain + "' where empid ='" + empid + "'";
            SqlCommand cmd2 = new SqlCommand(qry2, con);
            cmd2.ExecuteNonQuery();
            con.Close();
            

        }
        else if (e.CommandName == "deny")
        {

            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow rw = GridView1.Rows[index];
            string lid = rw.Cells[0].Text;
      
            string qry = "update leavemanage SET Status = 'Deny' where leaveid = @lid";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@lid", lid);
            con.Open();
            cmd.ExecuteNonQuery();
            GridView1.DataBind();
            con.Close();

        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}