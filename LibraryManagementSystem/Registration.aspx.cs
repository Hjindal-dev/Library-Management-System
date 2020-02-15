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
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            tbPassword.Attributes["value"] = tbPassword.Text;
        }

        public void ToggleTextBox()
        {
            StudentID.Visible = RadioButton1.Checked;
            TextBox1.Visible = RadioButton1.Checked;
        }
        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            ToggleTextBox();
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            ToggleTextBox();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection Conn = new SqlConnection
                           (ConfigurationManager.ConnectionStrings
                           ["LibraryManagementSystemConnectionString"].ConnectionString);
                Conn.Open();
                if (IsPostBack)
                {
                    string cmdstring = "Select count(*) from Registration where Email = '" + tbEmail.Text + "'";
                    SqlCommand userexist = new SqlCommand(cmdstring, Conn);

                    int temp = Convert.ToInt32(userexist.ExecuteScalar().ToString());


                    if (temp == 1)
                    {
                        Response.Write("User already exists");
                    }
                    else
                    {

                        string insertString = "INSERT into Registration (First_Name,Last_Name,Email,Password,Gender,Phone_Number,Address,Age,Status,Student_ID)" +
                             " VALUES (@FirstName,@LastName,@Email,@Password,@Gender,@PhoneNumber,@Address,@Age,@Status,@Id)";
                        SqlCommand insertUser = new SqlCommand(insertString, Conn);

                        insertUser.Parameters.AddWithValue("@FirstName", tbFirstName.Text);
                        insertUser.Parameters.AddWithValue("@LastName", tbLastName.Text);
                        insertUser.Parameters.AddWithValue("@Email", tbEmail.Text);
                        insertUser.Parameters.AddWithValue("@Password", tbPassword.Text);
                        if (RadioButton3.Checked == true)
                        {
                            insertUser.Parameters.AddWithValue("@Gender", "Male");
                        }
                        else if (RadioButton5.Checked == true)
                        {
                            insertUser.Parameters.AddWithValue("@Gender", "Female");
                        }
                        insertUser.Parameters.AddWithValue("@PhoneNumber", tbPhoneNumber.Text);
                        insertUser.Parameters.AddWithValue("@Address", tbAddress.Text);
                        insertUser.Parameters.AddWithValue("@Age", tbAge.Text);
                        if (RadioButton1.Checked == true)
                        {
                            insertUser.Parameters.AddWithValue("@Status", "Student");
                            insertUser.Parameters.AddWithValue("@Id", TextBox1.Text);
                            Label13.Visible = true;
                            Label13.Text = "Hey Student! be happy you are waved the fee of registration.";
                        }
                        else if (RadioButton4.Checked == true)
                        {

                            insertUser.Parameters.AddWithValue("@Status", "Member");
                            insertUser.Parameters.AddWithValue("@Id", "N/A");
                            Label13.Visible = true;
                            Label13.Text = "Hey Member! your account would be charged with a nominal fee of $10 for registration.";
                        }

                        insertUser.ExecuteNonQuery();
                        Label12.Visible = true;
                        Label12.Text = "Registration Successful";

                        Conn.Close();
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error");
                Response.Write(ex.ToString());
            }
        }
    }
}