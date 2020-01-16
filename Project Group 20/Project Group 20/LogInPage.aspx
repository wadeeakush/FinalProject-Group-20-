<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogInPage.aspx.cs" Inherits="Dyslaxia.LogInPage" %>
<link href="StyleSheet.css" rel="stylesheet" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <p>
        <br />
    </p>
    <form id="form1" runat="server">
        <h1>
            Log In
        </h1>
        <div>
            <br />
            <asp:Button ID="LogInKidButton" runat="server" Text="Log In As Kid" OnCommand="LogInKidButton_Command" />
            <br />
            <asp:Button ID="LogInParentButton" runat="server" Text="Log In As Parent" OnCommand="LogInParentButton_Command" />
            <br />
            <asp:Button ID="LogInAdminButton" runat="server" Text="Log In As Admin" OnCommand="LogInAdminButton_Command" />
        </div>
    </form>
</body>
</html>
