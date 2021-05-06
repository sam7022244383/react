using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace datalis
{
    public partial class searchproductscategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string source = "Data Source=LAPTOP-H2IJ3S8S\\SQLEXPRESS;Initial Catalog=Flipkart_database;Integrated Security=True";
            SqlConnection con = new SqlConnection(source);
            string query = "select * from [dbo].[homeproducts] where [category]='" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader da = cmd.ExecuteReader();
            if (da.HasRows)
            {
                DataList1.DataSource = da;
                DataList1.DataBind();

            }
            con.Close();
        }



        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/searchproductscategory.aspx");

        }
    }
}