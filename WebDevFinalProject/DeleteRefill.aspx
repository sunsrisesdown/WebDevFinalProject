<%@ Page Title="" Language="C#" MasterPageFile="~/Main1.Master" AutoEventWireup="true" CodeBehind="DeleteRefill.aspx.cs" Inherits="WebDevFinalProject.DeleteRefill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="RX Number:"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <table class="w-100">
        <tr>
            <td>
    <asp:Label ID="Label2" runat="server" Text="Refill ID"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <asp:Button ID="Button3" runat="server" Text="Exit" Width="58px" />
    <asp:Button ID="Button1" runat="server" Text="Delete Refill" />
    </asp:Content>
