<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MessagesFromAdmin.aspx.cs" Inherits="Dyslaxia.MessagesFromAdmin" %>
<link href="StyleSheet.css" rel="stylesheet" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <h1>Messages From Admin</h1>
            <asp:TextBox ID="Search" runat="server" placeholder="Write Your Name"></asp:TextBox>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="UserName" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="UserName" HeaderText="UserName" ReadOnly="True" SortExpression="UserName" />
                    <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [MessagesFromAdminToParents] WHERE [UserName] = @UserName" InsertCommand="INSERT INTO [MessagesFromAdminToParents] ([UserName], [Message]) VALUES (@UserName, @Message)" SelectCommand="SELECT [UserName], [Message] FROM [MessagesFromAdminToParents] WHERE ([UserName] = @UserName)" UpdateCommand="UPDATE [MessagesFromAdminToParents] SET [Message] = @Message WHERE [UserName] = @UserName">
                <DeleteParameters>
                    <asp:Parameter Name="UserName" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="Message" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="Search" Name="UserName" PropertyName="Text" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Message" Type="String" />
                    <asp:Parameter Name="UserName" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
