using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{
    public partial class UserPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_bookSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchResource.aspx");
        }

        protected void btn_issue_Click(object sender, EventArgs e)
        {
            Response.Redirect("IssueResource.aspx");
        }

        protected void btn_return_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReturnResource.aspx");
        }

        protected void Button0_Click(object sender, EventArgs e)
        {
            Response.Redirect("Welcome.aspx");
        }
    }
}