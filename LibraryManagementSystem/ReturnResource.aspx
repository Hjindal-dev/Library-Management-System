<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReturnResource.aspx.cs" Inherits="LibraryManagementSystem.ReturnResource" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 334px;
        }
        .auto-style5 {
            width: 334px;
            height: 30px;
        }
        .auto-style6 {
            height: 30px;
        }
        .auto-style8 {
            width: 334px;
            height: 32px;
        }
        .auto-style9 {
            height: 32px;
        }
        .auto-style11 {
            width: 334px;
            height: 29px;
        }
        .auto-style12 {
            height: 29px;
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
        .auto-style13 {
            width: 375px;
            height: 32px;
        }
        .auto-style14 {
            width: 375px;
        }
        .auto-style15 {
            width: 375px;
            height: 30px;
        }
        .auto-style16 {
            width: 375px;
            height: 29px;
        }
    </style>
</head>
<body>
    
         <div>
             <form id="form1" runat="server">
                 <br />
             <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" BorderColor="#FF99FF" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="XX-Large" ForeColor="White" Text="Return Resource"></asp:Label>
                 <br />
                 <br />
             <br />
             <br />
             <br />
             <table class="auto-style1"  style="margin-left:450px">
                 <tr>
                     <td class="auto-style13"><asp:Label ID="Username0" runat="server" BorderColor="#FF99FF" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="X-Large" ForeColor="White" Text="First Name:" Font-Italic="False"></asp:Label>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <br />
                         <br />
                     </td>
                     <td class="auto-style8">
            <asp:TextBox ID="tbName" runat="server"></asp:TextBox>
                         <br />
                         <br />
                     </td>
                     <td class="auto-style9"></td>
                 </tr>
                 <tr>
                     <td class="auto-style14"><asp:Label ID="Username1" runat="server" BorderColor="#FF99FF" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="X-Large" ForeColor="White" Text="User ID:"></asp:Label>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <br />
                         <br />
                     </td>
                     <td class="auto-style3">
            <asp:TextBox ID="tbName0" runat="server"></asp:TextBox>
                         <br />
                         <br />
                     </td>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style15"><asp:Label ID="Username6" runat="server" BorderColor="#FF99FF" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="X-Large" ForeColor="White" Text="Resource Name:"></asp:Label>
                         <br />
                         <br />
                     </td>
                     <td class="auto-style5">
            <asp:TextBox ID="tbName1" runat="server"></asp:TextBox>
                         <br />
                         <br />
                     </td>
                     <td class="auto-style6"></td>
                 </tr>
                 <tr>
                     <td class="auto-style15"><asp:Label ID="Username8" runat="server" BorderColor="#FF99FF" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="X-Large" ForeColor="White" Text="Resource Type:"></asp:Label>
                         <br />
                         <br />
                     </td>
                     <td class="auto-style5">
            <asp:DropDownList ID="drdResource" runat="server" CssClass="auto-style1" Width="128px">
                <asp:ListItem>Book</asp:ListItem>
                <asp:ListItem>Digital</asp:ListItem>
            </asp:DropDownList>
                         <br />
                         <br />
                     </td>
                     <td class="auto-style6">&nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style16"><asp:Label ID="Username7" runat="server" BorderColor="#FF99FF" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="X-Large" ForeColor="White" Text="Category:"></asp:Label>
                         <br />
                         <br />
                     </td>
                     <td class="auto-style11">
            <asp:DropDownList ID="dlCategory" runat="server" CssClass="auto-style1" Width="128px">
                <asp:ListItem>Physics</asp:ListItem>
                <asp:ListItem>Chemistry</asp:ListItem>
                <asp:ListItem>Ancient History</asp:ListItem>
                <asp:ListItem>Biology</asp:ListItem>
                <asp:ListItem>Entertainment</asp:ListItem>
            </asp:DropDownList>
                         <br />
                         <br />
                     </td>
                     <td class="auto-style12"></td>
                 </tr>
                 <tr>
                     <td class="auto-style14">&nbsp;</td>
                     <td class="auto-style3">&nbsp;</td>
                     <td>&nbsp;</td>
                 </tr>
             </table>
        
         <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
                 <p>
                     &nbsp;</p>
                 <p>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btn_return" runat="server" BackColor="#CCCCCC" BorderColor="White" BorderStyle="Outset" Font-Bold="True" Font-Names="Arial Black" Font-Size="Large" ForeColor="Black" Height="44px"  Text="Return" Width="221px" OnClick="btn_return_Click1"  />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_issue0" runat="server" BackColor="#CCCCCC" BorderColor="White" BorderStyle="Outset" Font-Bold="True" Font-Names="Arial Black" Font-Size="Large" ForeColor="Black" Height="44px"  Text="Go Back" Width="221px" OnClick="btn_issue0_Click" />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Button ID="Button1" runat="server" BackColor="#CCCCCC" BorderColor="White" BorderStyle="Outset" Font-Bold="True" Font-Names="Arial Black" Font-Size="Large" ForeColor="Black" Height="44px"  Text="Check Fine" Width="221px" OnClick="Button1_Click1" />
         </p>
         <p>
             <asp:Label ID="Label2" runat="server" Text="Label" Visible="False" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>
         </p>
         <p>
             <asp:Label ID="Label3" runat="server" Text="Label" Visible="False" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>
         </p>
    </form>
             </div>
</body>
</html>