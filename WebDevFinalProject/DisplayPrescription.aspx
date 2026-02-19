<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayPrescription.aspx.cs" Inherits="WebDevFinalProject.DisplayPrescription" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 200px;
        }
        .auto-style3 {
            width: 200px;
            height: 44px;
        }
        .auto-style4 {
            height: 44px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;<table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="RX Number:"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtRX" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Prescription Cost:"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtAMT" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Prescription Start Date:"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtSTART" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label10" runat="server" Text="Prescription End Date"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtEND" runat="server" style="margin-bottom: 5px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="Allowed Count:"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtCOUNT" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" Text="Patient ID:"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtPAT" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label6" runat="server" Text="Physician ID:"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtPHY" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server" Text="Medication Name:"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtNAME" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label8" runat="server" Text="Prescription Dosage:"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtDOSAGE" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label9" runat="server" Text="Prescription Information:"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtINFO" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnClose" runat="server" Text="Close" OnClick="btnClose_Click" />
            <br />
        </div>
    </form>
</body>
</html>
