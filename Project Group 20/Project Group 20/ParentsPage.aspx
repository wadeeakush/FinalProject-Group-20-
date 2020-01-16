<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ParentsPage.aspx.cs" Inherits="Dyslaxia.ParentsPage" %>
<link href="StyleSheet.css" rel="stylesheet" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <br />
            <asp:Button ID="SignUpMyKidBottun" runat="server" OnCommand="SignUpMyKidBottun_Command" Text="SignUp my kid" />
            <br />
            <asp:Button ID="StoryWishButton" runat="server" OnCommand="StoryWishButton_Command" Text="Wish Story" />
            <br />
            <asp:Button ID="MessagesFromAdmin" runat="server" Text="Messages From Admin" OnCommand="MessagesFromAdmin_Command" Width="210px" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:TextBox ID="FeedBack" runat="server" placeholder="Write Your FeedBack"></asp:TextBox>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <asp:Button ID="SendFeedBack" runat="server" Text="Send" OnCommand="SendFeedBack_Command" />
            <br />
        </div>
    </form>
</body>
</html>
