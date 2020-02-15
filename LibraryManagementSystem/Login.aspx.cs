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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button0_Click(object sender, EventArgs e)
        {
            Response.Redirect("Welcome.aspx");
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LibraryManagementSystemConnectionString"].ConnectionString);

            con.Open();

            SqlCommand cmd = new SqlCommand("Select * from Registration where Email = @Email and Password = @Password and Status =@Status", con);

            cmd.Parameters.AddWithValue("@Email", tbEmail.Text);
            cmd.Parameters.AddWithValue("@Password", tbPassword.Text);
            cmd.Parameters.AddWithValue("@Status", "Member");


            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.Read())
            {

                int id = reader.GetInt32(0);
                string s = reader["Status"].ToString();
                string f = reader["First_Name"].ToString();
                string l = reader["Last_Name"].ToString();

                UserInfo user = new UserInfo(id, s, f, l);

                Session["User"] = user;
                Response.Redirect("UserPage.aspx");

            }

            else
            {
                reader.Close();
                SqlCommand cmd2 = new SqlCommand("Select * from Registration where Email = @Email and Password = @Password and Status =@Status", con);

                cmd2.Parameters.AddWithValue("@Email", tbEmail.Text);
                cmd2.Parameters.AddWithValue("@Password", tbPassword.Text);
                cmd2.Parameters.AddWithValue("@Status", "ADMIN");

                SqlDataReader reader2 = cmd2.ExecuteReader();

                if (reader2.Read())
                {
                    Response.Redirect("Administrator.aspx");
                }

                else
                {
                    reader2.Close();
                    SqlCommand cmd3 = new SqlCommand("Select * from Registration where Email = @Email and Password = @Password and Status =@Status", con);

                    cmd3.Parameters.AddWithValue("@Email", tbEmail.Text);
                    cmd3.Parameters.AddWithValue("@Password", tbPassword.Text);
                    cmd3.Parameters.AddWithValue("@Status", "Student");

                    SqlDataReader reader3 = cmd3.ExecuteReader();

                    if (reader3.Read())

                    {
                        int id = reader3.GetInt32(0);
                        string s = reader3["Student_ID"].ToString();
                        string f = reader3["First_Name"].ToString();
                        string l = reader3["Last_Name"].ToString();

                        Student user = new Student(id, s, f, l);

                        Session["User"] = user;
                        Response.Redirect("UserPage.aspx");
                    }
                    else
                    {
                        Label4.Visible = true;
                        Label4.Text = "Incorrect Login Password Details!";
                    }
                }
            }

            con.Close();
        }
    }
}