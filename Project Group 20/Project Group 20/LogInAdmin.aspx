<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogInAdmin.aspx.cs" Inherits="Dyslaxia.LogInAdmin" %>
<link href="StyleSheet.css" rel="stylesheet" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Log In As Admin</h1>
		&nbsp;

		<div id="Submit">
            <asp:TextBox ID="UserNameLogIn" runat="server" placeholder="UserName" ></asp:TextBox>
            <asp:TextBox ID="PasswordLogIn" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
			&nbsp;
             <div>
            <asp:Label ID="ErrorMassege" runat="server" Text=""></asp:Label>
        </div>
            <asp:Button ID="LogInButton" runat="server" Text="LogIn" OnCommand="LogInButton_Command" />
		</div>
    </form>
</body>
</html>
