using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;


namespace interswitch1._0.Account
{

    public partial class Register : Page
    {
        string p = ConfigurationManager.ConnectionStrings["InterSwitch1.0ConnectionString"].ConnectionString;
        protected void Unnamed4_Click(object sender, EventArgs e)
        {
            newbank();
        }
        void newbank()
        {
            using (SqlConnection con = new SqlConnection(p))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into Banks values(@BranchName)";
                cmd.Parameters.AddWithValue("@BranchName",TextBox3.Text);
                con.Open();
                cmd.ExecuteNonQuery();
                GridView1.DataBind();
                Response.Write("new bank added successfully");
            }
        }
    }
}