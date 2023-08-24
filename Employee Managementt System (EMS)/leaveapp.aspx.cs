using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class leaveapp : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["empConnectionString"].ConnectionString;
 
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            string qry = "select max(leaveid) from leavemanage ";
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            int lid = Convert.ToInt32(dr[0]);
            lid++;
            levid.Text = lid.ToString();
        

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        string id = (string)Session["id"];
        DateTime from = fromcal.SelectedDate;
        DateTime till = tocal.SelectedDate;
        string q = "insert into leavemanage values('" + levid.Text + "','" + DropDownList1.SelectedItem + "','" + from + "','" + till + "','" + reason.Text + "',' Pending ',NULL,'" + id + "')";
       
        SqlCommand cmd = new SqlCommand(q,con);
        cmd.ExecuteNonQuery();
       
        Response.Write("<script>alert('Leave Application is sent')</script>");

        con.Close();

        levid.Text = "";
        reason.Text = "";
        

    }

   
    protected void from_TextChanged(object sender, EventArgs e)
    {
        
    }
    protected void fromcal_SelectionChanged(object sender, EventArgs e)
    {
        from.Text = fromcal.SelectedDate.ToShortDateString();
    }
    protected void tocal_SelectionChanged(object sender, EventArgs e)
    {
        to.Text = tocal.SelectedDate.ToShortDateString();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}