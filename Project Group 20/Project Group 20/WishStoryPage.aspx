<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WishStoryPage.aspx.cs" Inherits="Dyslaxia.WishStoryPage" %>
<link href="StyleSheet.css" rel="stylesheet" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <br />
        <h1>Wish Story</h1>
        <br />
        <asp:TextBox ID="UserName" runat="server" placeholder="Username" ></asp:TextBox>
        <br />
        <asp:TextBox ID="StoryName" runat="server" placeholder="Story Name" ></asp:TextBox>
        <asp:Button ID="SendButton" runat="server" OnCommand="SendButton_Command" Text="Send" />
        <br />

    </form>
</body>
</html>
