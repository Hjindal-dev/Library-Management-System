<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="LibraryManagementSystem.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style>
    body {
    background-image: url("images/image1.jpg");
    background-repeat:no-repeat;
	height:100%;
	width:auto%;
    background-size: 100% 100%; 
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: auto; margin-right: auto; text-align: center;">
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" BorderColor="#FF99FF" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="XX-Large" ForeColor="White" Text="Welcome to Library"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" Height="464px" ImageUrl="images/image2.jpg" Width="1200px" />
            <br />
            <br />
            <br />
            <p>
                &nbsp;<asp:Button ID="btn_login" runat="server" BackColor="#CCCCCC" BorderColor="White" BorderStyle="Outset" Font-Bold="True" Font-Names="Arial Black" Font-Size="Large" ForeColor="Black" Height="44px"  Text="Login" Width="221px" OnClick="btn_login_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_visitLibrary" runat="server" BackColor="#CCCCCC" BorderColor="#FFFFCC" BorderStyle="Outset" Font-Bold="True" Font-Names="Arial Black" Font-Size="Large" ForeColor="Black" Height="44px"  Text="Visit Library" Width="221px" OnClick="btn_visitLibrary_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_registration" runat="server" BackColor="#CCCCCC" BorderColor="#FFFFCC" BorderStyle="Outset" Font-Bold="True" Font-Names="Arial Black" Font-Size="Large" ForeColor="Black" Height="44px"  Text="Registration" Width="221px" OnClick="btn_registration_Click" />
            </p>
        </div>
        </form>
</body>
</html>