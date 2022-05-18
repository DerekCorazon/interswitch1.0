using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace interswitch1._0
{
    public partial class mainpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



           if (Session["role"].Equals("Admin"))
            {
                PlaceHolder1.Visible = true;
            }
           else if    (Session["role"].Equals("BankUser"))
            {
                PlaceHolder2.Visible = true;
            }
           else
            {
                TextBoxxxb.Text = Session["current userid"].ToString();
                TextBop.Text = Session["current name"].ToString();
                PlaceHolder3.Visible = true;
                PlaceHolder4.Visible = true;

            }
        }
    }
}