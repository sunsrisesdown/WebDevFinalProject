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
    <table class="w-100">
        <tr>
            <td class="auto-style2">
    <asp:Label ID="Label1" runat="server" Text="RX Number"></asp:Label>
            </td>
            <td>
    <asp:TextBox ID="TxtBoxNumber" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV1" runat="server" ControlToValidate="TxtBoxNumber" ErrorMessage="You need an RX Number"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
    <asp:Label ID="Label2" runat="server" Text="Refill ID"></asp:Label>
            </td>
            <td>
    <asp:TextBox ID="TxtBoxID" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV2" runat="server" ControlToValidate="TxtBoxID" ErrorMessage="You need a Refill ID"></asp:RequiredFieldValidator>
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
    <asp:Button ID="BtnRefill" runat="server" Text="Refill" />
    <asp:Button ID="BtnClear" runat="server" Text="Clear" />
    <asp:Button ID="BtnExit" runat="server" Text="Exit" />
            </td>
        </tr>
    </table>
</asp:Content>
