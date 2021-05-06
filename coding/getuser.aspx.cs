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
    public partial class getemployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          

        }

        protected void getuserbtn_Click(object sender, EventArgs e)
        {
            string connection = "Data Source=LAPTOP-H2IJ3S8S\\SQLEXPRESS;Initial Catalog=flipproductdetails;Integrated Security=True";
            string query = "select * from dbo.UserDetails where Email like '" + getuserid.Text + "%'";
            using (SqlConnection con = new SqlConnection(connection))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(query, con);

                GridView1.DataSource = cmd.ExecuteReader();
                GridView1.DataBind();
                getuserid.Text = "";

            }


        }

        protected void deleteuser_Click(object sender, EventArgs e)
        {
            string connection = "Data Source=LAPTOP-H2IJ3S8S\\SQLEXPRESS;Initial Catalog=flipproductdetails;Integrated Security=True";
            string query = "delete from dbo.UserDetails where Email='"+getuserid.Text+"' ";
            using (SqlConnection con = new SqlConnection(connection))
            {
                if (getuserid.Text != "")
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand(query, con);
                    SqlDataAdapter ds = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    ds.Fill(dt);

                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    getuserid.Text = "";
                }
                else
                {
                    Response.Write("<script>alert('enter the email ID')</script>");
                }
                

            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connection = "Data Source=LAPTOP-H2IJ3S8S\\SQLEXPRESS;Initial Catalog=flipproductdetails;Integrated Security=True";
            string query = "select * from dbo.UserDetails";
            using (SqlConnection con = new SqlConnection(connection))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataAdapter ds = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                ds.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            getuserid.Text = "";


        }
    }
}