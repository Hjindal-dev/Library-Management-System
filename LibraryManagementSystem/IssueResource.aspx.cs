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
    public partial class IssueResource : System.Web.UI.Page
    {
        SqlConnection Conn = new SqlConnection
                                     (ConfigurationManager.ConnectionStrings
                                     ["LibraryManagementSystemConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                if (Session["User"] != null)
                {
                    
                    UserInfo structure = (UserInfo)Session["User"];

                    tbName.Text = structure.FirstName.ToString();
                    tbId.Text = structure.Id.ToString();
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }

            }
        }

        protected void btn_issue_Click(object sender, EventArgs e)
        {
            Conn.Open();

            string cmd = "SELECT * from Library_Resources where Resource_Name ='"+tbResource.Text+"' and status ='Available'";
        
            SqlCommand userexist = new SqlCommand(cmd, Conn);

            int temp = Convert.ToInt32(userexist.ExecuteScalar().ToString());

            if (temp < 1)
            {
                Response.Write("Resource doesnot exist.");
            }
            else
            {
                SqlDataReader reader = userexist.ExecuteReader();
                if (reader.Read())
                {
                    string s = reader["fees"].ToString();
                    int result = s.CompareTo("N/A");
                    if (result != 0)
                    {
                        Label8.Visible = true;
                        Label8.Text = "Hey User you have to pay a fees of  $ " + s + " for your resource";
                    }
                }
                reader.Close();

                DateTime dateTime = DateTime.UtcNow.Date;
                string query = "Update Library_Resources Set status = 'Issued', date_of_issue = '"+ dateTime.ToString("yyyy/MM/dd") + "'where Resource_Name ='" + tbResource.Text + "'";
                SqlCommand insertUser = new SqlCommand(query, Conn);
                insertUser.ExecuteNonQuery();
                
                Conn.Close();
                Label2.Visible = true;
                Label2.Text = tbName.Text + "  has been issued the resource named " + tbResource.Text;
            }


        }

        protected void btn_goBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserPage.aspx");
        }
    }
}