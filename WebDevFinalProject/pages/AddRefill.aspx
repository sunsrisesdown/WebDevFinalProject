<%@ Page Title="" Language="C#" MasterPageFile="~/Main1.Master" AutoEventWireup="true" CodeBehind="AddRefill.aspx.cs" Inherits="WebDevFinalProject.AddRefill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 134px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <table class="w-100">
        <tr>
            <td class="auto-style2">
    <asp:Label ID="Label1" runat="server" Text="RX Number"></asp:Label>
            </td>
            <td>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style2">
    <asp:Label ID="Label2" runat="server" Text="Refill ID"></asp:Label>
            </td>
            <td>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
    <asp:Label ID="Label3" runat="server" Text="Refill Date"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
    <asp:Button ID="Button1" runat="server" Text="Refill" />
    <asp:Button ID="Button2" runat="server" Text="Clear" />
    <asp:Button ID="Button3" runat="server" Text="Exit" />
            </td>
        </tr>
    </table>
</asp:Content>
