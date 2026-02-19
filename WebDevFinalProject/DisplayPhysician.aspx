<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayPhysician.aspx.cs" Inherits="WebDevFinalProject.DisplayPhysician" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style4 {
            height: 32px;
        }
        .auto-style5 {
            height: 32px;
            width: 127px;
        }
        .auto-style7 {
            width: 127px;
        }
        .auto-style9 {
            width: 97px;
            height: 32px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" Text="Physician ID:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtPHY" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label2" runat="server" Text="First Name:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtFN" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" Text="Last Name:"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtLN" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label4" runat="server" Text="Middle Name:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtMI" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label5" runat="server" Text="Date of Birth:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label6" runat="server" Text="Gender"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtGen" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label7" runat="server" Text="Hire Date:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtDT" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label21" runat="server" Text="Salary:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtSAL" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label20" runat="server" Text="Specialty One:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtSP1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label19" runat="server" Text="Specialty Two:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtSP2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label18" runat="server" Text="Specialty Three:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtSP3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label17" runat="server" Text="Work Email:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtWE" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label16" runat="server" Text="Personal Email:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtPE" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label15" runat="server" Text="Home Phone:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtHP" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label14" runat="server" Text="Cell Phone:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtCellP" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label13" runat="server" Text="Work Phone:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtWP" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label12" runat="server" Text="Address:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtADD" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label10" runat="server" Text="City:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtCIT" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label9" runat="server" Text="State:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtSTA" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label11" runat="server" Text="ZIP:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtZIP" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </form>
</body>
</html>
