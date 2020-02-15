<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LibraryManagementSystem.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    #div0 {
            height: 0px;
            width: 100%;
            }
        #div1 {
            height: 600px;
            width: 40%;
            float: left;
            margin:50px;
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
        <div style="margin-left: auto; margin-right: auto; text-align: center;">
    
         <div id="div0" class="auto-style2" style="margin-left: auto; margin-right: auto; text-align: center;">
             <br />
        <asp:Label ID="Label1" runat="server" BorderColor="#FF99FF" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="XX-Large" ForeColor="White" Text="Login Here!"></asp:Label>
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
        <br />
        <br />
        <br />
             </div>
         <div id="div1" class="auto-style1" style="margin-left: auto; margin-right: auto; text-align: center;">
              <br />
             <br />
             <br />
             <br />
             <br />
              <br />
             <br />
             <br />
             <br />
             <br />
        <asp:Label ID="Label2" runat="server" BorderColor="#FF99FF" Font-Bold="True" Font-Italic="False" Font-Names="Comic Sans MS" Font-Size="X-Large" ForeColor="White" Text="Email"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbEmail" runat="server" Height="22px" Width="182px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbEmail" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
             <br />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" BorderColor="#FF99FF" Font-Bold="True" Font-Italic="False" Font-Names="Comic Sans MS" Font-Size="X-Large" ForeColor="White" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="tbPassword" runat="server" Height="23px" TextMode="Password" Width="182px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbPassword" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
             <br />
             <br />
              <br />
              <br />
              <br />
              <br />

                <asp:Button ID="Button" runat="server" BackColor="#CCCCCC" BorderColor="White" BorderStyle="Outset" Font-Bold="True" Font-Names="Arial Black" Font-Size="Large" ForeColor="Black" Height="44px" Text="Login" Width="250px" OnClick="Button_Click" />
    
         &nbsp;&nbsp;&nbsp;

                <asp:Button ID="Button0" runat="server" BackColor="#CCCCCC" BorderColor="White" BorderStyle="Outset" Font-Bold="True" Font-Names="Arial Black" Font-Size="Large" ForeColor="Black" Height="44px" Text="Go Back" Width="250px" CausesValidation="False" OnClick="Button0_Click" />
    
              <br />
              <br />
              <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="AR JULIAN" Font-Size="X-Large" ForeColor="Blue" NavigateUrl="~/Registration.aspx">New Users Register Here</asp:HyperLink>
              <br />
              <br />
              <asp:Label ID="Label4" runat="server" Font-Size="X-Large" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
    
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

            <asp:Image ID="Image1" runat="server" Height="463px" ImageUrl="images/Library.jpeg" Width="608px" CssClass="auto-style2" />

            </div>
            </div>
     
    </form>
</body>
</html>