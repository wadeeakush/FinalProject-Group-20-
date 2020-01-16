<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ParentsListPage.aspx.cs" Inherits="Dyslaxia.ParentsListPage" %>
<link href="StyleSheet.css" rel="stylesheet" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Parents</h1>
    <asp:Label ID="lblTable" runat="server" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="UserName" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="UserName" HeaderText="UserName" ReadOnly="True" SortExpression="UserName" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle ForeColor="#333333" BackColor="#F7F6F3" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [Parents] WHERE [UserName] = @UserName" InsertCommand="INSERT INTO [Parents] ([UserName], [Email], [Password]) VALUES (@UserName, @Email, @Password)" SelectCommand="SELECT [UserName], [Email], [Password] FROM [Parents]" UpdateCommand="UPDATE [Parents] SET [Email] = @Email, [Password] = @Password WHERE [UserName] = @UserName">
            <DeleteParameters>
                <asp:Parameter Name="UserName" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="UserName" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
