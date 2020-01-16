<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogInKid.aspx.cs" Inherits="Dyslaxia.LogInKid" %>
<link href="StyleSheet.css" rel="stylesheet" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <h1>Log In As Kid</h1>
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
    <asp:Button ID="FPButton" runat="server" Text="Forget Password" OnCommand="FPButton_Command" />
    </form>
</body>
</html>
