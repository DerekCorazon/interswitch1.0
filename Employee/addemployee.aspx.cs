using System;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace interswitch1._0.Account
{
    public partial class AddPhoneNumber : System.Web.UI.Page
    {
        string p = ConfigurationManager.ConnectionStrings["InterSwitch1.0ConnectionString"].ConnectionString;
        protected void PhoneNumber_Click(object sender, EventArgs e)
        {
            newemployee();
            clear();
        }
        void newemployee()
        {
            int a = 3;
            using (SqlConnection con = new SqlConnection(p))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into InterSwitchUsers values(@InstitutionCode,@Username,@LastName,@FirstName,@EmailAddress,@Password,@RoleCode)";
                cmd.Parameters.AddWithValue("@InstitutionCode", a);
                cmd.Parameters.AddWithValue("@Username", tusr.Text);
                cmd.Parameters.AddWithValue("@LastName", TextBox2.Text);
                cmd.Parameters.AddWithValue("@FirstName", TextBox1.Text);
                cmd.Parameters.AddWithValue("@EmailAddress", TextBox4.Text);
                cmd.Parameters.AddWithValue("@Password", ConfirmPassword.Text);
                cmd.Parameters.AddWithValue("@RoleCode", Confirm.SelectedValue);
                con.Open();
                cmd.ExecuteNonQuery();

            }
        }
        void clear()
        {
            tusr.Text = ""; TextBox2.Text = ""; TextBox1.Text = ""; TextBox4.Text = "";ConfirmPassword.Text = "";

        }
    }
}