<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="Dyslaxia.MainPage" %>
<link href="StyleSheet.css" rel="stylesheet" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>
                Dyslexia
            </h1>
            <br /><br /><br />
            <asp:Button ID="AboutUsBotton" runat="server" Text="About Us" OnCommand="AboutUsBotton_Command" />
            <br />
            <asp:Button ID="LogInButton" runat="server" Text="Log In" OnCommand="LogInButton_Command" />
            <br />
            <asp:Button ID="SignUpButton" runat="server" Text="Sign Up" OnCommand="SignUpButton_Command" />
            <br />
            <asp:Button ID="ContactUsButton" runat="server" Text="Contact Us" OnCommand="ContactUsButton_Command" />
            <br />
        </div>
    </form>
</body>
</html>
