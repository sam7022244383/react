using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace datalis.coding
{
    public partial class loginform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connection = "Data Source=LAPTOP-H2IJ3S8S\\SQLEXPRESS;Initial Catalog=flipproductdetails;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(connection))
            {
                string query = "select count(*) from dbo.UserDetails where [Email]='" + regmail.Text + "'and [Password]='" + regpass.Text + "'";
                //  SqlCommand cmd = new SqlCommand(query, con);
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows[0][0].ToString() == "1")
                {
                    Session["login"] = regmail.Text;
                    Response.Write("<script>alert('Welcome to Flipkart')</script>");
                    Response.Redirect("~/WebForm1.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Incorrect Email ID or Password')</script>");

                }
            }

            regmail.Text = "";
            regpass.Text = "";
        }
    }
}