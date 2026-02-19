<%@ Page Title="" Language="C#" MasterPageFile="~/Main1.Master" AutoEventWireup="true" CodeBehind="ModifyRefill.aspx.cs" Inherits="WebDevFinalProject.ModifyRefill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Refill ID"></asp:Label>
    <asp:TextBox ID="TxtBoxID" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RFV1" runat="server" ControlToValidate="TxtBoxID" ErrorMessage="You need a Refill ID"></asp:RequiredFieldValidator>
    <table class="w-100">
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="RX Number"></asp:Label>
                <asp:TextBox ID="TxtBoxNumber" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV2" runat="server" ControlToValidate="TxtBoxNumber" ErrorMessage="You need an RX Number"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Refill Date"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="BtnUpdate" runat="server" Text="Update" OnClick="BtnUpdate_Click" />
                <asp:Button ID="BtnExit" runat="server" Text="Exit" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
