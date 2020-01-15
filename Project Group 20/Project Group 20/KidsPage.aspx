<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KidsPage.aspx.cs" Inherits="Dyslaxia.KidsPage" %>
<link href="StyleSheet.css" rel="stylesheet" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Kids Page</h1>
            <p>&nbsp;</p>
            <br />
            <asp:Button ID="LionStory" runat="server" OnCommand="LionStory_Command" Text="Lion Story" />
        </div>
    </form>
</body>
</html>
