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
    public partial class AddToCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string source = "Data Source=LAPTOP-H2IJ3S8S\\SQLEXPRESS;Initial Catalog=Flipkart_database;Integrated Security=True";
            string query = "select * from [dbo].[Cartproducts]";
            using (SqlConnection con = new SqlConnection(source))
            {
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataSet ds = new DataSet();
                da.Fill(ds, "emp");
                Label4.Text = ds.Tables["emp"].Rows.Count.ToString();
                 
            }

            using(SqlConnection con = new SqlConnection(source))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select sum(Price) from [dbo].[Cartproducts] ", con);
                Label5.Text = cmd.ExecuteScalar().ToString();
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string source = "Data Source=LAPTOP-H2IJ3S8S\\SQLEXPRESS;Initial Catalog=Flipkart_database;Integrated Security=True";
            string destination = "Data Source=LAPTOP-H2IJ3S8S\\SQLEXPRESS;Initial Catalog=Flipkart_database;Integrated Security=True";
            using (SqlConnection sourcecon = new SqlConnection(source))
            {
                //SqlCommand cmd = new SqlCommand("select * from  [dbo].[Cartproducts] where productID='" + TextBox1.Text + "' ", sourcecon);
                sourcecon.Open();
                //using (SqlDataReader rdr = cmd.ExecuteReader())
                //{
                //    using (SqlConnection destinat = new SqlConnection(destination))
                //    {
                //        using (SqlBulkCopy bc = new SqlBulkCopy(destination))
                //        {
                //            bc.DestinationTableName = "[dbo].[homeproducts]";
                //            destinat.Open();
                //            bc.WriteToServer(rdr);
                //        }
                //    }

                //}
                SqlCommand cmd1 = new SqlCommand("delete from  [dbo].[Cartproducts] where productID='" + TextBox1.Text + "' ", sourcecon);
                cmd1.ExecuteNonQuery();
                Response.Write("<script>alert('Removed from the cart')</script>");
                Response.Redirect("~/AddToCart.aspx");

            }
        }
    }
}