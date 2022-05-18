using System;
using System.Collections.Generic;
using System.Configuration;
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
        string X = ConfigurationManager.ConnectionStrings["InterSwitch1.0ConnectionString"].ConnectionString;
        protected void Page_Load1(object sender, EventArgs e)
        {
          
        }
        void newleaverequest()
        {
            int a = Convert.ToInt32(Session["current userid"]);
            using (SqlConnection con = new SqlConnection(X))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into leaveRequests values(@EmployeeID,@Name,@StartDate,@EndDate,@RoleCode)";
               
                cmd.Parameters.AddWithValue("@EmployeeID", a);
                cmd.Parameters.AddWithValue("@Name", TextBox4.Text);
                cmd.Parameters.AddWithValue("@StartDate", TextBox5.Text);
                cmd.Parameters.AddWithValue("@EndDate",TextBox2.Text);


                cmd.Parameters.AddWithValue("@RoleCode", DropList1.SelectedValue);
                con.Open();
                cmd.ExecuteNonQuery();
               

            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            checkdepartment();
            clear();
            PlaceHolder2909.Visible = false;
            PlaceHolder399.Visible = true;
        }
        void clear()
        {
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox2.Text = "";
        }



        void checkdepartment()
        {
            using (SqlConnection con = new SqlConnection(X))
            {
                SqlCommand cmd = new SqlCommand("select * from leaveRequests where RoleCode='" + DropList1.SelectedValue+"'" , con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();


                if (dr.HasRows)
                {
                    Response.Write("SOME ONE IS ALREADY ON LEAVE.'User can not Request Leave while user in same department is on leave'");
                }
                else
                {
                    newleaverequest();
                }
            }
        }
      void check()
        {
            using (SqlConnection con = new SqlConnection(X))
            {
                SqlCommand cmd = new SqlCommand("select * from leaveRequests where startDate>=EndDate", con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    Response.Write("sorry your dates are overlapping could not finish request");
                    deletero();
                }
                else
                {
                    Response.Write("Your request has been sent successfully");
                    Response.Redirect("mainpage.aspx");
                }
                }
            }


        void deletero()
        {
            using (SqlConnection con = new SqlConnection(X))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "delete  from leaveRequests  where RoleCode = '" + DropList1.SelectedValue + "'";
                con.Open();
                cmd.ExecuteNonQuery();
            }

        }

        protected void Button00978_Click(object sender, EventArgs e)
        {
            check();
        }
    }
}