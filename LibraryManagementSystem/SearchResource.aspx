<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchResource.aspx.cs" Inherits="LibraryManagementSystem.SearchResource" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 317px;
        }
         html, body {
            height: 100%;
        }

body {
     background-image: url("images/image1.jpg");
     background-size: 100% 100%;
     background-repeat: no-repeat;
     width:auto;
}
        .auto-style4 {
            width: 62px;
        }
        .auto-style5 {
            width: 62px;
            height: 58px;
        }
        .auto-style6 {
            width: 317px;
            height: 58px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                 <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Label ID="Label1" runat="server" BorderColor="#FF99FF" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="XX-Large" ForeColor="White" Text="Search Resource"></asp:Label>
                 <br />
                 <br />
            <br />
            <br />
            <br />
        
      <table class="auto-style1" style="margin-left:350px;">
        
            <tr>
                <td class="auto-style4">
        <asp:Label ID="Label7" runat="server" BorderColor="#FF99FF" Font-Bold="True" Font-Italic="False" Font-Names="Comic Sans MS" Font-Size="X-Large" ForeColor="White" Text="Book/Resource Name"></asp:Label>
                    &nbsp;<br />
                    <br />
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="tbResourceName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
        <asp:Label ID="Label8" runat="server" BorderColor="#FF99FF" Font-Bold="True" Font-Italic="False" Font-Names="Comic Sans MS" Font-Size="X-Large" ForeColor="White" Text="Category"></asp:Label>
                    <br />
                    <br />
                </td>
                <td class="auto-style6">
                    <asp:DropDownList ID="drdCategory" runat="server">
                        <asp:ListItem>Ancient History</asp:ListItem>
                        <asp:ListItem>Physics</asp:ListItem>
                        <asp:ListItem>Chemistry</asp:ListItem>
                        <asp:ListItem>Biology</asp:ListItem>
                        <asp:ListItem>Entertainment</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
        <asp:Label ID="Label9" runat="server" BorderColor="#FF99FF" Font-Bold="True" Font-Italic="False" Font-Names="Comic Sans MS" Font-Size="X-Large" ForeColor="White" Text="Related To Course"></asp:Label>
                    <br />
                    <br />
                </td>
                <td class="auto-style6">
                    <asp:DropDownList ID="drdCourse" runat="server">
                        <asp:ListItem>History</asp:ListItem>
                        <asp:ListItem>Mechanical Engineering</asp:ListItem>
                        <asp:ListItem>Chemical Lab Technician</asp:ListItem>
                        <asp:ListItem>Mechanical Engineering</asp:ListItem>
                        <asp:ListItem>Electromechanical Engineering</asp:ListItem>
                        <asp:ListItem>Health Care Practioner</asp:ListItem>
                        <asp:ListItem>Nursing</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
        <asp:Label ID="Label10" runat="server" BorderColor="#FF99FF" Font-Bold="True" Font-Italic="False" Font-Names="Comic Sans MS" Font-Size="X-Large" ForeColor="White" Text="Book Author(If Applicable)"></asp:Label>
                    <br />
                    <br />
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="tbBookAuthor" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
        <asp:Label ID="Label11" runat="server" BorderColor="#FF99FF" Font-Bold="True" Font-Italic="False" Font-Names="Comic Sans MS" Font-Size="X-Large" ForeColor="White" Text="Year of Publication"></asp:Label>
                    <br />
                    <br />
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="tbYear" runat="server"></asp:TextBox>
                </td>
            </tr>
           
        </table>
        
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
            <asp:Button ID="btSearch" runat="server" BackColor="#CCCCCC" BorderColor="White" BorderStyle="Outset" Font-Bold="True" Font-Names="Arial Black" Font-Size="Large" ForeColor="Black" Height="44px"  Text="Search" Width="221px" OnClick="btSearch_Click1"  />
                   
               
                    
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input id="Reset1" type="reset" value="Reset" style= "background-color:#CCCCCC ; font-family:Arial Black ; height: 44px; width: 221px; color:black; font-size:large; font-weight:bold; border-color:white; border-style: outset "/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" BackColor="#CCCCCC" BorderColor="White" BorderStyle="Outset" Font-Bold="True" Font-Names="Arial Black" Font-Size="Large" ForeColor="Black" Height="44px"  Text="Go Back" Width="221px" OnClick="Button1_Click" />
        <br />
        <br />
        <br />
       <div style="margin-left: auto; margin-right: auto; text-align: center;  width:600px; ">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:GridView ID="GridView1" runat="server" BackColor="#CC99FF" BorderColor="#66CCFF" Font-Bold="True" Font-Size="Large" ForeColor="White">
        </asp:GridView></div> 
            </div>
    </form>
</body>
</html>