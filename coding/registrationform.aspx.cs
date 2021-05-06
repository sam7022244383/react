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
    public partial class registrationform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connection = "Data Source=LAPTOP-H2IJ3S8S\\SQLEXPRESS;Initial Catalog=flipproductdetails;Integrated Security=True";
            string query = "insert into dbo.UserDetails([FirstName],[LastName],[Email],[Password],[ConfirmPassword],[city]) values('" + regfirst.Text + "','" + reglast.Text + "','" + regemail.Text + "','" + regpass.Text + "','" + regpassconfirm.Text + "','" + regbirthcity.Text + "')";
            SqlConnection con = new SqlConnection(connection);
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            regfirst.Text = "";
            reglast.Text = "";
            regemail.Text = "";           
            regpass.Text = "";
            regpassconfirm.Text = "";
            regbirthcity.Text = "";

        }
    }
}