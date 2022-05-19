using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace interswitch1._0
{
    public partial class roles : System.Web.UI.Page
    {
        string a = ConfigurationManager.ConnectionStrings["InterSwitch1.0ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void newrole()
        {
            using (SqlConnection con = new SqlConnection(a))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;

                cmd.CommandText = "insert into BankRoles values(@RoleCode,@RoleDescription)";
                cmd.Parameters.AddWithValue("@RoleCode", TxtBox2.Text);
                cmd.Parameters.AddWithValue("@RoleDescription", TxtBox1.Text);

                con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("new role added");

            }
        }
        void newirole()
        {
            using (SqlConnection con = new SqlConnection(a))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;

                cmd.CommandText = "insert into BankRoles values(@RoleCode,@RoleDescription)";
                cmd.Parameters.AddWithValue("@RoleCode", TextBx1.Text);
                cmd.Parameters.AddWithValue("@RoleDescription", TxtBx1.Text);

                con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("new role");

            }
        }
        void newcrole()
        {
            using (SqlConnection con = new SqlConnection(a))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;

                cmd.CommandText = "insert into BankRoles values(@RoleCode,@RoleDescription)";
                cmd.Parameters.AddWithValue("@RoleCode", Box1.Text);
                cmd.Parameters.AddWithValue("@RoleDescription", Box2.Text);

                con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("new corporate role");

            }
        }

        protected void Button1x_Click(object sender, EventArgs e)
        {
            newrole();
        }

        protected void Button2x_Click(object sender, EventArgs e)
        {
            newirole();
        }

        protected void Button3x_Click(object sender, EventArgs e)
        {
            newcrole();
        }
    }
}