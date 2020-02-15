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
    public partial class AddResource : System.Web.UI.Page
    {
        SqlConnection Conn = new SqlConnection
                                        (ConfigurationManager.ConnectionStrings
                                        ["LibraryManagementSystemConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

            
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Conn.Open();
            String insertBook = "Insert into Library_Resources (Resource_Name,Category,relatedToCourse,borrowPeriod,fees,book_author,Year_of_Publication,type,status) Values('"+ tbName.Text + "','"+ tbCategory.Text + "','"+tbCourse.Text+"','"+tbPeriod.Text+"','" + tbFees.Text + "','" +btAuthor.Text+"','"+ tbYear.Text + "','" + tbType.Text+"','Available')";


                SqlCommand cmd = new SqlCommand(insertBook,Conn);
                SqlDataAdapter adapter = new SqlDataAdapter();
               
            adapter.InsertCommand = new SqlCommand(insertBook, Conn);

            adapter.InsertCommand.ExecuteNonQuery();

            cmd.Dispose();
            Conn.Close();
            Label11.Visible = true;
            Label11.Text = "The Resource is Added!";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Administrator.aspx");
        }
    }
    
}