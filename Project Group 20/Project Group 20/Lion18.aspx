﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lion18.aspx.cs" Inherits="Dyslaxia.Lion18" %>

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
            <asp:Button ID="PlayButton" runat="server" style="margin-left: 160px" Text="play" Width="95px" OnCommand="PlayButton_Command" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="NextButton" runat="server" style="margin-left: 160px" Text="Next" Width="95px" OnCommand="NextButton_Command" />
        </div>
        <p>
            <img alt="" class="auto-style1" src="Images/Lioness/18.png" /></p>
    </form>
</body>
</html>