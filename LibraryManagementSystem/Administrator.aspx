<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Administrator.aspx.cs" Inherits="LibraryManagementSystem.Administrator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        html{
            height:100%;
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
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="User_ID" DataSourceID="SqlDataSource1" Font-Bold="True" ForeColor="White">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="User_ID" HeaderText="User_ID" InsertVisible="False" ReadOnly="True" SortExpression="User_ID" />
                <asp:BoundField DataField="First_Name" HeaderText="First_Name" SortExpression="First_Name" />
                <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Phone_Number" HeaderText="Phone_Number" SortExpression="Phone_Number" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryManagementSystemConnectionString %>" DeleteCommand="DELETE FROM [Registration] WHERE [User_ID] = @User_ID" InsertCommand="INSERT INTO [Registration] ([First_Name], [Last_Name], [Email], [Password], [Gender], [Phone_Number], [Address], [Fees], [Age], [Status]) VALUES (@First_Name, @Last_Name, @Email, @Password, @Gender, @Phone_Number, @Address, @Fees, @Age, @Status)" SelectCommand="SELECT * FROM [Registration]" UpdateCommand="UPDATE [Registration] SET [First_Name] = @First_Name, [Last_Name] = @Last_Name, [Email] = @Email, [Password] = @Password, [Gender] = @Gender, [Phone_Number] = @Phone_Number, [Address] = @Address, [Fees] = @Fees, [Age] = @Age, [Status] = @Status WHERE [User_ID] = @User_ID">
            <DeleteParameters>
                <asp:Parameter Name="User_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="First_Name" Type="String" />
                <asp:Parameter Name="Last_Name" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Phone_Number" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Age" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="First_Name" Type="String" />
                <asp:Parameter Name="Last_Name" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Phone_Number" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Age" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="User_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <p>
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Resource_ID" DataSourceID="SqlDataSource3" ForeColor="White">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="Resource_ID" HeaderText="Resource_ID" InsertVisible="False" ReadOnly="True" SortExpression="Resource_ID" />
                    <asp:BoundField DataField="Resource_Name" HeaderText="Resource_Name" SortExpression="Resource_Name" />
                    <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                    <asp:BoundField DataField="relatedToCourse" HeaderText="relatedToCourse" SortExpression="relatedToCourse" />
                    <asp:BoundField DataField="borrowPeriod" HeaderText="borrowPeriod" SortExpression="borrowPeriod" />
                    <asp:BoundField DataField="fees" HeaderText="fees" SortExpression="fees" />
                    <asp:BoundField DataField="book_author" HeaderText="book_author" SortExpression="book_author" />
                    <asp:BoundField DataField="Year_of_Publication" HeaderText="Year_of_Publication" SortExpression="Year_of_Publication" />
                    <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                    <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                    <asp:BoundField DataField="date_of_issue" HeaderText="date_of_issue" SortExpression="date_of_issue" />
                    <asp:BoundField DataField="date_of_return" HeaderText="date_of_return" SortExpression="date_of_return" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryManagementSystemConnectionString2 %>" DeleteCommand="DELETE FROM [Library_Resources] WHERE [Resource_ID] = @Resource_ID" InsertCommand="INSERT INTO [Library_Resources] ([Resource_Name], [Category], [relatedToCourse], [borrowPeriod], [fees], [book_author], [Year_of_Publication], [type], [status], [date_of_issue], [date_of_return]) VALUES (@Resource_Name, @Category, @relatedToCourse, @borrowPeriod, @fees, @book_author, @Year_of_Publication, @type, @status, @date_of_issue, @date_of_return)" SelectCommand="SELECT * FROM [Library_Resources]" UpdateCommand="UPDATE [Library_Resources] SET [Resource_Name] = @Resource_Name, [Category] = @Category, [relatedToCourse] = @relatedToCourse, [borrowPeriod] = @borrowPeriod, [fees] = @fees, [book_author] = @book_author, [Year_of_Publication] = @Year_of_Publication, [type] = @type, [status] = @status, [date_of_issue] = @date_of_issue, [date_of_return] = @date_of_return WHERE [Resource_ID] = @Resource_ID">
                <DeleteParameters>
                    <asp:Parameter Name="Resource_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Resource_Name" Type="String" />
                    <asp:Parameter Name="Category" Type="String" />
                    <asp:Parameter Name="relatedToCourse" Type="String" />
                    <asp:Parameter Name="borrowPeriod" Type="String" />
                    <asp:Parameter Name="fees" Type="String" />
                    <asp:Parameter Name="book_author" Type="String" />
                    <asp:Parameter Name="Year_of_Publication" Type="String" />
                    <asp:Parameter Name="type" Type="String" />
                    <asp:Parameter Name="status" Type="String" />
                    <asp:Parameter DbType="Date" Name="date_of_issue" />
                    <asp:Parameter DbType="Date" Name="date_of_return" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Resource_Name" Type="String" />
                    <asp:Parameter Name="Category" Type="String" />
                    <asp:Parameter Name="relatedToCourse" Type="String" />
                    <asp:Parameter Name="borrowPeriod" Type="String" />
                    <asp:Parameter Name="fees" Type="String" />
                    <asp:Parameter Name="book_author" Type="String" />
                    <asp:Parameter Name="Year_of_Publication" Type="String" />
                    <asp:Parameter Name="type" Type="String" />
                    <asp:Parameter Name="status" Type="String" />
                    <asp:Parameter DbType="Date" Name="date_of_issue" />
                    <asp:Parameter DbType="Date" Name="date_of_return" />
                    <asp:Parameter Name="Resource_ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ADD NEW RESOURCE"  BackColor="#CCCCCC" BorderColor="White" BorderStyle="Outset" Font-Bold="True" Font-Names="Arial Black" Font-Size="Large" ForeColor="Black" Height="44px"  Width="301px"  />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    </form>
</body>
</html>
