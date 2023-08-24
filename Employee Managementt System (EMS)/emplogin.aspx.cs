using System;
using System.Data;
using System.Data.SqlClient;
using System.Threading;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class emplogin : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["empConnectionString"].ConnectionString;
    private int generator()
    {
        int aid = 0;
        try
        {
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            string qry = "select max(aid) from attendance ";
            SqlCommand cmd = new SqlCommand(qry, con);
            aid = Convert.ToInt32(cmd.ExecuteScalar());
            aid++;
            con.Close();
          
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Error: " + ex.Message + "')</script>");
        }
        return aid;
    }

 

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    
    protected void Button1_Click(object sender, EventArgs e)
    {
        int val = generator();
        Session["aid"] = val;

        string q = "select empid, password from emp_reg where empid = '"+ eid.Text +"' and password = '"+pd.Text+"'";

            
            SqlConnection con = new SqlConnection(constr);
            SqlDataAdapter ad = new SqlDataAdapter(q, con);
            DataTable dt = new DataTable();
            ad.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                 con.Open();
                    Session["id"] = eid.Text;
                    DateTime date = DateTime.Today;
                    DateTime login = DateTime.Now;
                    string sql = "INSERT INTO attendance VALUES ('" + val + "', '" + eid.Text + "', '" + date + "','" + login + "', Null, 'Present', '" + login + "')";
                    SqlCommand cmd = new SqlCommand(sql, con);
                    cmd.ExecuteNonQuery();
                    con.Close();


                    string qry = "UPDATE attendance SET lastlogin = login WHERE empid = '" + eid.Text + "'";
                    SqlCommand updateCmd = new SqlCommand(qry, con);
                    con.Open();
                    updateCmd.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("emphome.aspx");
                }
               
            
            else
            {
                Response.Write("<script>alert('Invalid Login Details')</script>");
            }
         
   }
 }
       
 

