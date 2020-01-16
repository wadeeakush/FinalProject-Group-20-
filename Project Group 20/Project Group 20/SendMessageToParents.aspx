<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SendMessageToParents.aspx.cs" Inherits="Dyslaxia.SendMessageToParents" %>
<link href="StyleSheet.css" rel="stylesheet" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Send Message For a Parent</h1>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <asp:TextBox ID="ParentUserName" runat="server" placeholder="Parent UserName"></asp:TextBox>
    <asp:TextBox ID="MassegeToParent" runat="server" placeholder="Massege" Height="100px"></asp:TextBox>
		<div>
			
			&nbsp;<asp:Button ID="SendMessage" runat="server" Text="Send" OnCommand="SendMessage_Command" />

		</div>

        </div>
    </form>
</body>
</html>
