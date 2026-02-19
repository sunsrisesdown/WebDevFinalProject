<%@ Page Title="" Language="C#" MasterPageFile="~/Main1.Master" AutoEventWireup="true" CodeBehind="AddPatient.aspx.cs" Inherits="WebDevFinalProject.AddPatient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <title>Add Patient</title>

<style>
    body {
        font-family: Arial;
        background-color: #e6e6e6;
    }

    .mainBox {
        width: 700px;
        background-color: white;
        padding: 15px;
        border: 1px solid black;
    }

    h2 {
        text-align: center;
        background-color: #cccccc;
        padding: 5px;
    }

    table {
        width: 100%;
    }

    td {
        padding: 5px;
    }

    .buttons {
     
  
    }

    .error {
        color: black;
        font-size: 12px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="mainBox">

    <h2>Add New Patient</h2>



    <table border="0">
        <tr>
            <td>Patient ID:</td>
            <td>
                <asp:TextBox ID="txtPatient" runat="server" />
                <asp:RequiredFieldValidator ID="rfvPatient" runat="server"
                    ControlToValidate="txtPatient"
                    ErrorMessage="* Required"
                    CssClass="error" />
            </td>
        </tr>

        <tr>
            <td>First Name:</td>
            <td>
                <asp:TextBox ID="txtFirst" runat="server" />
                <asp:RequiredFieldValidator ID="rfvFirst" runat="server"
                    ControlToValidate="txtFirst"
                    ErrorMessage="* Required"
                    CssClass="error" />
            </td>
        </tr>

        <tr>
            <td>Middle Initial:</td>
            <td>
                <asp:TextBox ID="txtMiddle" runat="server" MaxLength="1" Width="40px" />
            </td>
        </tr>

        <tr>
            <td>Last Name:</td>
            <td>
                <asp:TextBox ID="txtLast" runat="server" />
                <asp:RequiredFieldValidator ID="rfvLast" runat="server"
                    ControlToValidate="txtLast"
                    ErrorMessage="* Required"
                    CssClass="error" />
            </td>
        </tr>

        <tr>
            <td>Date of Birth:</td>
            <td>
                <asp:TextBox ID="txtDOB" runat="server" TextMode="Date" />
            </td>
        </tr>

        <tr>
            <td>Gender:</td>
            <td>
                <asp:DropDownList ID="cboGender" runat="server">
                    <asp:ListItem Text="Select Gender" Value="" />
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>

        <tr>
            <td>Account Balance:</td>
            <td>
                <asp:TextBox ID="txtAcct" runat="server" />
            </td>
        </tr>

        <tr>
            <td>Street:</td>
            <td><asp:TextBox ID="txtStreet" runat="server" /></td>
        </tr>

        <tr>
            <td>City:</td>
            <td><asp:TextBox ID="txtCity" runat="server" /></td>
        </tr>

        <tr>
            <td>State:</td>
            <td><asp:TextBox ID="txtState" runat="server" Width="50px" /></td>
        </tr>

        <tr>
            <td>Zip:</td>
            <td><asp:TextBox ID="txtZip" runat="server" MaxLength="5" Width="80px" /></td>
        </tr>

        <tr>
            <td>Home Phone:</td>
            <td><asp:TextBox ID="txtHome" runat="server" /></td>
        </tr>

        <tr>
            <td>Cell Phone:</td>
            <td><asp:TextBox ID="txtCell" runat="server" /></td>
        </tr>

        <tr>
            <td>Work Phone:</td>
            <td><asp:TextBox ID="txtWorkP" runat="server" /></td>
        </tr>

        <tr>
            <td>Work Email:</td>
            <td><asp:TextBox ID="txtWorkE" runat="server" /></td>
        </tr>

        <tr>
            <td>Personal Email:</td>
            <td><asp:TextBox ID="txtPersE" runat="server" /></td>
        </tr>
    </table>

    <div class="buttons">
        <asp:Button ID="btnAdd" runat="server" Text="Add Patient"
            OnClick="btnAdd_Click" />
        &nbsp;
        <asp:Button ID="btnClear" runat="server" Text="Clear"
            OnClick="btnClear_Click" />
    </div>

</div>
</asp:Content>
