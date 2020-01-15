<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lion23.aspx.cs" Inherits="Dyslaxia.Lion23" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1265px;
            height: 599px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="PrevButtun" runat="server" style="margin-left: 160px" Text="PREV" Width="95px" OnCommand="PrevButtun_Command" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="HomeButton" runat="server" style="margin-left: 160px" Text="Home" Width="95px" OnCommand="HomeButton_Command" />
        </div>
        <p>
            <img alt="" class="auto-style1" src="Images/Lioness/23.png" /></p>
    </form>
</body>
</html>