<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayRefill.aspx.cs" Inherits="WebDevFinalProject.DisplayRefill" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p style="margin-left: 20px">
                <asp:Label ID="lblID" runat="server" Text="Refill ID:"></asp:Label>
            </p>
            <p style="margin-left: 40px">
                <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
            </p>
            <p style="margin-left: 20px">
                <asp:Label ID="lblRX" runat="server" Text="RX Number:"></asp:Label>
            </p>
            <p style="margin-left: 40px">
                <asp:TextBox ID="txtRX" runat="server"></asp:TextBox>
            </p>
            <p style="margin-left: 20px">
                <asp:Label ID="lblDate" runat="server" Text="Date Filled:"></asp:Label>
            </p>
            <p style="margin-left: 40px">
                <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
            </p>
            <p style="margin-left: 7.5px">
                <asp:Button ID="btnClose" runat="server" Text="Close" />
            </p>
        </div>
    </form>
</body>
</html>
