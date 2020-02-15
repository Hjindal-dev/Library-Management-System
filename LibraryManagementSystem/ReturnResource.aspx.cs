using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace LibraryManagementSystem
{
    public partial class ReturnResource : System.Web.UI.Page
    {
        SqlConnection Conn = new SqlConnection
                                    (ConfigurationManager.ConnectionStrings
                                    ["LibraryManagementSystemConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            
              if (!IsPostBack)
             {
                 if (Session["User"] != null)
                 {
                     UserInfo structure = (UserInfo)Session["User"];

                    tbName.Text = structure.FirstName.ToString();
                    tbName0.Text = structure.Id.ToString();
                 }
                 else
                 {
                     Response.Redirect("Login.aspx");
                 }
                
             }
        }


        protected void btn_return_Click1(object sender, EventArgs e)
        {
            Conn.Open();

            string cmd = "SELECT * from Library_Resources where Resource_Name ='" + tbName1.Text + "'and status ='Issued'";
            SqlCommand userexist = new SqlCommand(cmd, Conn);

            int temp = Convert.ToInt32(userexist.ExecuteScalar().ToString());

            if (temp < 1)
            {
                Response.Write("Invalid Resource Details!");
            }
            else
            {
                DateTime dateTime = DateTime.UtcNow.Date;
                string query = "Update Library_Resources Set status = 'Returned', date_of_return = '" + dateTime.ToString("yyyy/MM/dd") + "'where Resource_Name ='" + tbName1.Text + "'and status ='Issued'";
                SqlCommand insertUser = new SqlCommand(query, Conn);
                insertUser.ExecuteNonQuery();

            }
            Label2.Visible = true;
            Label2.Text = tbName.Text + "  has returned the resource named " + tbName1.Text;
            Conn.Close();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Conn.Open();
            string query1 = "Select * from Library_Resources where Resource_Name ='" + tbName1.Text + "'and status ='Returned'";
            SqlCommand cmd2 = new SqlCommand(query1, Conn);
            SqlDataReader reader = cmd2.ExecuteReader();

            if (reader.Read())
            {
                DateTime returnDate = reader.GetDateTime(11);
                int borrowperiod = Convert.ToInt32(reader["borrowPeriod"].ToString());
                DateTime issueDate = reader.GetDateTime(10);
                DateTime dueDate = issueDate.AddDays(borrowperiod);

                reader.Close();
                int result = DateTime.Compare(dueDate, returnDate);
                if (result < 0)
                {
                    double numLate = (returnDate - dueDate).TotalDays;
                    if (numLate == 1)
                    {
                        int fine = 5;
                        Label3.Visible = true;
                        Label3.Text = "Hi " + tbName.Text + "please pay a fine of $" + fine.ToString();
                       
                            string insertDefaulter = "Insert into Library_Defaulters (First_Name, Fine) Values ('"+ tbName.Text + "','"+ fine.ToString() +"')";
                            SqlCommand insertUser = new SqlCommand(insertDefaulter, Conn);
                            insertUser.ExecuteNonQuery();
                     }
                        
                    
                    else if (numLate == 2)
                    {
                        int fine = 10;
                        Label3.Visible = true;
                        Label3.Text = "Hi " + tbName.Text + "please pay a fine of $" + fine.ToString();
                        string query3 = "Select * from Registration where First_Name ='" + tbName.Text + "'and User_ID ='" + tbName0.Text + "'";
                        SqlCommand cmd = new SqlCommand(query3, Conn);
                        
                            string f = fine.ToString();
                            string insertDefaulter = "Insert into Library_Defaulters (First_Name, Fine) Values ('" + tbName.Text + "','" + f + "')";
                            SqlCommand insertUser = new SqlCommand(insertDefaulter, Conn);
                            insertUser.ExecuteNonQuery();
                       

                    }
                    else
                    {
                        int fine = 50;
                        Label3.Visible = true;
                        Label3.Text = "Hi " + tbName.Text + " please pay a fine of $ " + fine.ToString() + ". Since book was returned later than 2 days of due date.";
                        string query3 = "Select * from Registration where First_Name ='" + tbName.Text + "'and User_ID ='" + tbName0.Text + "'";
                        SqlCommand cmd = new SqlCommand(query3, Conn);
                        
                            string f = fine.ToString();
                            string insertDefaulter = "Insert into Library_Defaulters (First_Name, Fine) Values ('" + tbName.Text + "','" + f + "')";
                            SqlCommand insertUser = new SqlCommand(insertDefaulter, Conn);
                            insertUser.ExecuteNonQuery();
                        
                        
                    }

                }
                else
                {
                    Label3.Visible = true;
                    Label3.Text = "Book is returned on time! Good Job!";
                }

            }
            
            Conn.Close();
        }

        protected void btn_issue0_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserPage.aspx");
        }
    }
}
    