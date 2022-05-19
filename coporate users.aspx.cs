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
    public partial class coporate_users : System.Web.UI.Page
    {
        string a = ConfigurationManager.ConnectionStrings["InterSwitch1.0ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            PlaceHolderlon.Visible = false;
            PlaceHoldernon.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            newCorporateUser();
        }
        void newCorporateUser()
        {
            int b = 2;
            using (SqlConnection con = new SqlConnection(a))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;

                cmd.CommandText = "insert into CorporateUsers values(@InstitutionCode,@CorporateType,@Username,@LastName,@FirstName,@EmailAddress,@Password,@RoleCode)";
                cmd.Parameters.AddWithValue("@InstitutionCode", b);
                cmd.Parameters.AddWithValue("@CorporateType", DownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@Username", txusr.Text);
                cmd.Parameters.AddWithValue("@LastName", Tbl.Text);
                cmd.Parameters.AddWithValue("@FirstName", Tbf.Text);
                cmd.Parameters.AddWithValue("@EmailAddress", Temeail.Text);
                cmd.Parameters.AddWithValue("@Password", Confirmme.Text);


                cmd.Parameters.AddWithValue("@RoleCode", DropDownList2.Text);
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("corporate user added successfully");

            }

        }
    }
}