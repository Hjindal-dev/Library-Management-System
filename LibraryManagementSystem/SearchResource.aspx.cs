using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace LibraryManagementSystem
{
    public partial class SearchResource : System.Web.UI.Page
    {
        SqlConnection Conn = new SqlConnection
                           (ConfigurationManager.ConnectionStrings
                           ["LibraryManagementSystemConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btSearch_Click1(object sender, EventArgs e)
        {
            using (Conn)
            {
                using (SqlCommand cmd = new SqlCommand("SELECT Resource_Id, Resource_Name,Category,relatedToCourse,fees,book_author,type,Year_of_Publication,status from Library_Resources where Resource_Name =@Resource OR Category =@category OR relatedToCourse=@course OR book_author =@author OR Year_of_Publication =@year"))
                {
                    cmd.Parameters.AddWithValue("@Resource", tbResourceName.Text);
                    cmd.Parameters.AddWithValue("@category", drdCategory.Text);
                    cmd.Parameters.AddWithValue("@course", drdCourse.Text);
                    cmd.Parameters.AddWithValue("@author", tbBookAuthor.Text);
                    cmd.Parameters.AddWithValue("@year", tbYear.Text);
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = Conn;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserPage.aspx");
        }
    }
    }
