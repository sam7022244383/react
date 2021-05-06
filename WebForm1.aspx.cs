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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        if(Session["login"] !=null)
            {
                Label4.Text = "Logged in as " + Session["login"].ToString();
            }
            else
            {
                Label4.Text = "Login to continue shopping";
            }

            string source = "Data Source=LAPTOP-H2IJ3S8S\\SQLEXPRESS;Initial Catalog=Flipkart_database;Integrated Security=True";
            string query = "select * from [dbo].[Cartproducts]";
            using (SqlConnection con = new SqlConnection(source))
            {
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataSet ds = new DataSet();
                da.Fill(ds, "emp");
                Label5.Text = ds.Tables["emp"].Rows.Count.ToString();

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string source = "Data Source=LAPTOP-H2IJ3S8S\\SQLEXPRESS;Initial Catalog=Flipkart_database;Integrated Security=True";
            string destination = "Data Source=LAPTOP-H2IJ3S8S\\SQLEXPRESS;Initial Catalog=Flipkart_database;Integrated Security=True";
            using(SqlConnection sourcecon = new SqlConnection(source))
            {
                SqlCommand cmd = new SqlCommand("select * from [dbo].[homeproducts] where productID='"+TextBox1.Text+"' ",sourcecon);
                sourcecon.Open();
                using(SqlDataReader rdr = cmd.ExecuteReader())
                {
                    using(SqlConnection destinat= new SqlConnection(destination))
                    {
                        using(SqlBulkCopy bc = new SqlBulkCopy(destination))
                        {
                            bc.DestinationTableName = "[dbo].[Cartproducts]";
                            destinat.Open();
                            bc.WriteToServer(rdr);
                        }
                    }
                    Response.Write("<script>alert('You Have added the product into your cart')</script>");
                }
                //SqlCommand cmd1 = new SqlCommand("delete from [dbo].[homeproducts] where productID='" + TextBox1.Text + "' ", sourcecon);
                //cmd1.ExecuteNonQuery();
                //Response.Redirect("~/WebForm1.aspx");

        
            }
            TextBox1.Text = "";
        }

        

    

        protected void Button2_Click(object sender, EventArgs e)
        {

            string source = "Data Source=LAPTOP-H2IJ3S8S\\SQLEXPRESS;Initial Catalog=Flipkart_database;Integrated Security=True";
            SqlConnection con = new SqlConnection(source);
            string query = "select * from [dbo].[homeproducts] where [category]='" + TextBox1.Text+ "'";
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

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Session.Remove("login");
            Session.RemoveAll();
            Label4.Text = "Login to continue shopping";
        }
    }
}