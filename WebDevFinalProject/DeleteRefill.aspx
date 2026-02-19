<%@ Page Title="" Language="C#" MasterPageFile="~/Main1.Master" AutoEventWireup="true" CodeBehind="DeleteRefill.aspx.cs" Inherits="WebDevFinalProject.DeleteRefill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="RX Number:"></asp:Label>
    <asp:TextBox ID="TxtBoxNumber" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RFV1" runat="server" ControlToValidate="TxtBoxNumber" ErrorMessage="You need an RX Number"></asp:RequiredFieldValidator>
    <table class="w-100">
        <tr>
            <td>
    <asp:Label ID="Label2" runat="server" Text="Refill ID"></asp:Label>
    <asp:TextBox ID="TxtBoxID" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV2" runat="server" ControlToValidate="TxtBoxID" ErrorMessage="You Need a Refill ID"></asp:RequiredFieldValidator>
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
    <asp:Button ID="BtnExit" runat="server" Text="Exit" Width="58px" />
    <asp:Button ID="BtnDeleteRefill" runat="server" Text="Delete Refill" OnClick="BtnDeleteRefill_Click" />
    </asp:Content>
