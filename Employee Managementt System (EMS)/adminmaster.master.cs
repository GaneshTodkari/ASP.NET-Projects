using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class images_adminmaster : System.Web.UI.MasterPage
{
    string constr = ConfigurationManager.ConnectionStrings["empConnectionString"].ConnectionString;

    private int generator()
    {
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        string qry = "select max(aid) from attendance ";
        SqlCommand cmd = new SqlCommand(qry, con);
        int aid = Convert.ToInt32(cmd.ExecuteScalar());
        aid++;
        con.Close();
        return aid;
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void attup (object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(constr);

        DateTime currentDate = DateTime.Now;

        string qry = "SELECT empid, lastlogin FROM attendance WHERE lastlogin <  CAST(GETDATE() AS time)";
        con.Open();
        SqlCommand insrt = new SqlCommand(qry, con);
  
            SqlDataReader reader = insrt.ExecuteReader();
            
                while (reader.Read())
                {
                    int employeeId = reader.GetInt32(0);
                    TimeSpan lastLogin = reader.GetTimeSpan(1);
                    DateTime lastLoginDateTime = DateTime.Today.Add(lastLogin);
                    InsertAttendanceRecord(employeeId, lastLoginDateTime, currentDate);
                }
            
            con.Close();
     }



    void InsertAttendanceRecord(int employeeId, DateTime lastLogin, DateTime attendanceDate)
    {
        SqlConnection con = new SqlConnection(constr);
        int val = generator();
        con.Open();
        string insertQuery = "INSERT INTO attendance VALUES (@Val, @EmployeeId, @AttendanceDate, Null, Null, 'Absent', @LastLogin)";
        SqlCommand insertCommand = new SqlCommand(insertQuery, con);
            insertCommand.Parameters.AddWithValue("@Val", val);
            insertCommand.Parameters.AddWithValue("@EmployeeId", employeeId);
            insertCommand.Parameters.AddWithValue("@AttendanceDate", attendanceDate);
            insertCommand.Parameters.AddWithValue("@LastLogin", lastLogin);

           
            insertCommand.ExecuteNonQuery();
            con.Close();
        }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
}
