<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="Dyslaxia.AdminPage" %>
<link href="StyleSheet.css" rel="stylesheet" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Admin Page</h1>
            <p>&nbsp;</p>
            <p>
                <asp:Button ID="KidsList" runat="server" Text="Kids List" OnCommand="KidsList_Command" />
                <asp:Button ID="ParentList" runat="server" Text="Parents List" OnCommand="ParentList_Command" />
                <asp:Button ID="RPList" runat="server" Text="Recover Password List" OnCommand="RPList_Command" />
                <asp:Button ID="ContactUsMessages" runat="server" Text="Contact Us Messages" OnCommand="ContactUsMessages_Command" Width="212px" />
                <asp:Button ID="WishListPage" runat="server" Text="Stories Wish List" OnCommand="WishListPage_Command" />
                <asp:Button ID="FeedBackListPage" runat="server" Text="FeedBacks" OnCommand="FeedBackListPage_Command" />
                <asp:Button ID="SendMessageToParents" runat="server" Text="Send Messages To Parents" OnCommand="SendMessageToParents_Command" Width="232px" />
            </p>

        </div>
    </form>
</body>
</html>
