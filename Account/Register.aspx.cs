using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;


namespace interswitch1._0.Account
{
    public partial class Register : Page
    {
        string a = ConfigurationManager.ConnectionStrings["InterSwitch1.0ConnectionString"].ConnectionString;
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            newCustomer();
        }
      

        protected void Button1_Click(object sender, EventArgs e)
        {
            PlaceHolder4.Visible = false;
            Label1.Visible = false;
          
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            PlaceHolder3.Visible = false;
            PlaceHolder4.Visible = true;
        }
     
        void newCustomer()
        {
            int g = 1;
            using (SqlConnection con = new SqlConnection(a))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into BankUsers values(@InstitutionCode,@BranchCode,@Username,@LastName,@FirstName,@EmailAddress,@Password,@RoleCode)";
                cmd.Parameters.AddWithValue("@InstitutionCode",g);
                cmd.Parameters.AddWithValue("@BranchCode", List4.SelectedValue);
                cmd.Parameters.AddWithValue("@Username",x3.Text);
                cmd.Parameters.AddWithValue("@LastName", TextBox4.Text);
                cmd.Parameters.AddWithValue("@FirstName", TextBox5.Text);
                cmd.Parameters.AddWithValue("@EmailAddress", Email.Text);
                cmd.Parameters.AddWithValue("@Password", ConfirmPassword.Text);
                cmd.Parameters.AddWithValue("@RoleCode", DropDownList2.SelectedValue);
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("Youve Registered successfully,use credentials to log in to access our services");
            }
        }

        protected void Unnamed5_Click(object sender, EventArgs e)
        {
            
        }
    }
}