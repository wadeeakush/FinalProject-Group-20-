<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RPKids.aspx.cs" Inherits="Dyslaxia.RPKids" %>
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
            <h1>Recover Password</h1>
            <br />
            <asp:TextBox ID="UserNameRecover" runat="server" placeholder="UserName"></asp:TextBox>
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <asp:Button ID="PasswordRecButton" runat="server" Height="53px" Text="Send Password To Email" Width="311px" OnCommand="PasswordRecButton_Command1" />
        </div>
    </form>
</body>
</html>
