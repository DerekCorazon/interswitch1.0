using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace interswitch1._0.Employee
{
    public partial class LeaveRequests : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            oldleaverequest();
            deleter();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox3.Text = GridView1.SelectedRow.Cells[0].Text;
            TextBox1.Text = GridView1.SelectedRow.Cells[1].Text;
            TextBox22.Text = GridView1.SelectedRow.Cells[2].Text;
            TextBox29.Text = GridView1.SelectedRow.Cells[3].Text;
            TextBox200.Text = GridView1.SelectedRow.Cells[4].Text;
        }
        void oldleaverequest()
        {
            using (SqlConnection con = new SqlConnection(X))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into ApprovedRequests values(@EmployeeID,@Name,@StartDate,@EndDate,@RoleCode)";

                cmd.Parameters.AddWithValue("@EmployeeID", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@StartDate", TextBox22.Text);
                cmd.Parameters.AddWithValue("@EndDate", TextBox29.Text);
                cmd.Parameters.AddWithValue("@RoleCode", TextBox200.Text);
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("Your request has been sent successfully");

            }
        }

        void deleter()
        {
            using (SqlConnection con = new SqlConnection(X))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "delete  from leaveRequests  where RoleCode = '" + TextBox200.Text + "'";
                con.Open();
                cmd.ExecuteNonQuery();
                GridView1.DataBind();
            }

        }


    }
}