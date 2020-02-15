<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserPage.aspx.cs" Inherits="LibraryManagementSystem.UserPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #div0 {
            height: 60px;
            width: 100%;
            }
        #div1 {
            height: 600px;
            width: 40%;
            float: left;
        }
        #div2 {
            height: 600px;
            width: 60%;
            float: right;
            
        }
        .auto-style1 {
            width: 279px;
        }
        .auto-style2 {
            margin-top: 0px;
        }
        
        html, body {
            height: 100%;
        }

body {
     background-image: url("images/image1.jpg");
     background-size: 100% 100%;
     background-repeat: no-repeat;
     width:auto%
}
 
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="div0" class="auto-style2" style="margin-left: auto; margin-right: auto; text-align: center;">
           <br />
            <br />
            <br /> <asp:Label ID="Label2" runat="server" BorderColor="#FF99FF" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="XX-Large" ForeColor="White" Text="Insight on ESH Private Library"></asp:Label>
        </div>
        <div id="div1" class="auto-style1" style="margin-left: auto; margin-right: auto; text-align: center;">
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="btn_issue" runat="server" BackColor="#CCCCCC" BorderColor="White" BorderStyle="Outset" Font-Bold="True" Font-Names="Arial Black" Font-Size="Large" ForeColor="Black" Height="44px"  Text="Issue Resource" Width="250px" OnClick="btn_issue_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="btn_return" runat="server" BackColor="#CCCCCC" BorderColor="White" BorderStyle="Outset" Font-Bold="True" Font-Names="Arial Black" Font-Size="Large" ForeColor="Black" Height="44px"  Text="Return Resource" Width="250px" OnClick="btn_return_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            &nbsp;&nbsp;
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="btn_bookSearch" runat="server" BackColor="#CCCCCC" BorderColor="White" BorderStyle="Outset" Font-Bold="True" Font-Names="Arial Black" Font-Size="Large" ForeColor="Black" Height="44px"  Text="Resource Search" Width="250px" OnClick="btn_bookSearch_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
            <br />
            <br />
            <br />

                <asp:Button ID="Button0" runat="server" BackColor="#CCCCCC" BorderColor="White" BorderStyle="Outset" Font-Bold="True" Font-Names="Arial Black" Font-Size="Large" ForeColor="Black" Height="44px" Text="Go Back" Width="250px" CausesValidation="False" OnClick="Button0_Click" />
    
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
            &nbsp;<br />
            &nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
        <div id="div2" class="auto-style2" style="margin-left: auto; margin-right: auto; text-align: center;">

            <br />
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:Image ID="Image1" runat="server" Height="463px" ImageUrl="images/image3.jpeg" Width="608px" CssClass="auto-style2" />

            </div>
        </div>
    </form>
</body>
</html>