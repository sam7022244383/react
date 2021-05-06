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
    public partial class password : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = "select * from [dbo].[UserDetails] where city like '" + regbirthcity.Text + "%'";
            string connection = "Data Source=LAPTOP-H2IJ3S8S\\SQLEXPRESS;Initial Catalog=flipproductdetails;Integrated Security=True";
           if(regbirthcity.Text !="")
            {
                using (SqlConnection con = new SqlConnection(connection))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand(query, con);

                    GridView1.DataSource = cmd.ExecuteReader();
                    GridView1.DataBind();
                }
                regbirthcity.Text = "";

            }
            else
            {
                Response.Write("<script>alert('enter your birth city')</script>");
            }
           
            

        } 
    }
}