<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WishListDisplay.aspx.cs" Inherits="Dyslaxia.WishListDisplay" %>
<link href="StyleSheet.css" rel="stylesheet" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Stories Users Wish</h1>
            <p>&nbsp;</p>
            <p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="UserName" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="UserName" HeaderText="UserName" ReadOnly="True" SortExpression="UserName" />
                        <asp:BoundField DataField="Story" HeaderText="Story" SortExpression="Story" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [WishList] WHERE [UserName] = @UserName" InsertCommand="INSERT INTO [WishList] ([UserName], [Story]) VALUES (@UserName, @Story)" ProviderName="<%$ ConnectionStrings:DatabaseConnectionString1.ProviderName %>" SelectCommand="SELECT [UserName], [Story] FROM [WishList]" UpdateCommand="UPDATE [WishList] SET [Story] = @Story WHERE [UserName] = @UserName">
                    <DeleteParameters>
                        <asp:Parameter Name="UserName" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="Story" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Story" Type="String" />
                        <asp:Parameter Name="UserName" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </p>
        </div>
    </form>
</body>
</html>
