<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayPatient.aspx.cs" Inherits="WebDevFinalProject.DisplayPatient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/ImportedFiles/main.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style7 {
            width: 258px;
            height: 29px;
        }
        .auto-style8 {
            height: 29px;
        }
        .auto-style9 {
            width: 258px;
            height: 32px;
        }
        .auto-style10 {
            height: 32px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label1" runat="server" Text="Patient ID:"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label2" runat="server" Text="First Name:"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtFN" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label3" runat="server" Text="Last Name:"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtLN" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label4" runat="server" Text="Middle Name:"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtMI" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label5" runat="server" Text="Date of Birth:"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label6" runat="server" Text="Gender"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtGEN" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label7" runat="server" Text="Account Balance:"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtACC" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label8" runat="server" Text="Work Email:"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtWE" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label9" runat="server" Text="Personal Email:"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtPE" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label10" runat="server" Text="Home Phone:"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtHP" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label11" runat="server" Text="Cell Phone:"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtCellP" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label12" runat="server" Text="Work Phone:"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtWP" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label13" runat="server" Text="Address:"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtADD" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label14" runat="server" Text="City:"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtCIT" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label15" runat="server" Text="State:"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtSTA" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label16" runat="server" Text="ZIP:"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtZIPa" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnClose" runat="server" OnClick="btnClose_Click" Text="Close" />
    </form>
</body>
</html>
