<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpPageKid.aspx.cs" Inherits="Dyslaxia.SignUpPageKid" %>
<link href="StyleSheet.css" rel="stylesheet" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Sign Up my Kid</h1>
	<asp:TextBox ID="username" runat="server" placeholder="UserName" ></asp:TextBox>
		
		<asp:TextBox ID="email" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>

		<asp:TextBox ID="password" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
        
		<asp:TextBox ID="repassword" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>

        <div>
            <asp:Label ID="ErrorMassege" runat="server" Text=""></asp:Label>
        </div>

        <asp:Button ID="Submit" runat="server" Text="Submit" OnCommand="Submit_Command"/>
    </form>
</body>
</html>
