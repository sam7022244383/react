using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace datalis.coding
{
    public partial class Admin_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (regadminmobile.Text == "sami" && regadminpass.Text == "$@mi@")
            {
                Response.Redirect("~/coding/getuser.aspx");
            }
            else
            {
                Response.Write("<script>alert('Incorrect User ID or Password')</script>");
            }

        }
    }
}