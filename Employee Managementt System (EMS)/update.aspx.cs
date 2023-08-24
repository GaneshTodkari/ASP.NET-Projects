using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class update : System.Web.UI.Page
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
        string searchText = TextBox1.Text;
        string searchType = search.SelectedValue;

        string query = "";
        if (searchType == "name")
        {
            query = "SELECT empid, name, email, role, roleid FROM emp_reg WHERE name LIKE @searchText";
        }
        else if (searchType == "id")
        {
            query = "SELECT empid, name, email, role, roleid FROM emp_reg WHERE CAST(empid AS NVARCHAR(10)) LIKE @searchText";
        }

        using (SqlConnection con = new SqlConnection(constr))
        {
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@searchText", "%" + searchText + "%");
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        BindGridView();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        
            GridViewRow row = GridView1.Rows[e.RowIndex];
            string empid = row.Cells[1].Text;
         
            TextBox txtName = row.FindControl("txtName") as TextBox;
            TextBox txtEmail = row.FindControl("txtEmail") as TextBox;
            DropDownList ddlRole = row.FindControl("ddlRole") as DropDownList;

            if (txtName != null && txtEmail != null && ddlRole != null)
            {
                string name = txtName.Text;
                string email = txtEmail.Text;
                string roleid = ddlRole.SelectedValue;

                using (SqlConnection con = new SqlConnection(constr))
                {
                    string updateQuery = "UPDATE emp_reg SET name = @name, email = @email, role = @role, roleid = @roleid WHERE empid = @empid";
                    SqlCommand cmd = new SqlCommand(updateQuery, con);
                    cmd.Parameters.AddWithValue("@name", name);
                    cmd.Parameters.AddWithValue("@email", email);
                    cmd.Parameters.AddWithValue("@role", ddlRole.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@roleid", roleid);
                    cmd.Parameters.AddWithValue("@empid", empid);

                    con.Open();
                    cmd.ExecuteNonQuery();
                }

            }

        GridView1.EditIndex = -1;
        BindGridView();
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        BindGridView();
    }

    private void BindGridView()
    {
        string searchText = TextBox1.Text.Trim();
        string searchType = search.SelectedValue;

        string query = "";
        if (searchType == "name")
        {
            query = "SELECT empid, name, email, role, roleid FROM emp_reg WHERE name LIKE @searchText";
        }
        else if (searchType == "id")
        {
            query = "SELECT empid, name, email, role, roleid FROM emp_reg WHERE CAST(empid AS NVARCHAR(10)) LIKE @searchText";
        }

        using (SqlConnection con = new SqlConnection(constr))
        {
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@searchText", "%" + searchText + "%");
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}
