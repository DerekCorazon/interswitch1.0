using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace interswitch1._0
{
    public partial class _Default : Page
    {
        string d = ConfigurationManager.ConnectionStrings["InterSwitch1.0ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed8_Click(object sender, EventArgs e)
        {
            //Encrypt(Password.Text);
            if(x4.SelectedValue=="BANK")
            {
                checkuser();
            }
            else if (x4.SelectedValue=="INTERSWITCH")
            {
                InterSwitchuser();
            }
            else
            {
                Adminuser(); 
            }
        }
        static string Encrypt(string txt)
        {
            using (MD5CryptoServiceProvider M = new MD5CryptoServiceProvider())
            {
                UTF8Encoding uTF8 = new UTF8Encoding();
                byte[] data = M.ComputeHash(uTF8.GetBytes(txt));
                return Convert.ToBase64String(data);
            }
        }

     //code to check user details
        void checkuser()
        {
          
            using (SqlConnection con = new SqlConnection(d))
            {
                SqlCommand cmd = new SqlCommand("select * from BankUsers where UserName='" + tbx.Text.Trim() + "'and Password='" +  Password.Text.Trim() + "'", con);
                con.Open();
                SqlDataReader pr = cmd.ExecuteReader();
                if (pr.HasRows)
                {

                    while (pr.Read())
                    {
                        Session["role"] = "BankUser";
                    }
                   
                    Response.Redirect("mainpage.aspx");
                }
                else
                {
                    Response.Write("invalid account");
                }
            }
        }
        void InterSwitchuser()
        {
            using (SqlConnection con = new SqlConnection(d))
            {
                SqlCommand cmd = new SqlCommand("select * from InterSwitchUsers where UserName='" + tbx.Text.Trim() + "'and Password='" + Password.Text.Trim() + "'", con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();


                if (dr.HasRows)
                {

                    while (dr.Read())
                    {

                        Session["role"] = "User";
                        Session["current userid"] = dr.GetValue(1).ToString();
                        Session["current name"] = dr.GetValue(2).ToString();


                    }

                    Response.Redirect("mainpage.aspx");
                }
            }
        }
        void Adminuser()
        {
            using (SqlConnection con = new SqlConnection(d))
            {
                SqlCommand cmd = new SqlCommand("select * from CorporateUsers where UserName='" + tbx.Text.Trim() + "'and Password='" + Password.Text.Trim() + "'", con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();


                if (dr.HasRows)
                {

                    while (dr.Read())
                    {

                        Session["role"] = "Admin";


                    }

                    Response.Redirect("mainpage.aspx");
                }
                else
                {
                    Response.Write("invalid credentials");
                }
            }
        }
    }
}

