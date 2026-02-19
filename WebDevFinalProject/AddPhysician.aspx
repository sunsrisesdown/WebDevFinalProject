<%@ Page Title="" Language="C#" MasterPageFile="~/Main1.Master" AutoEventWireup="true" CodeBehind="AddPhysician.aspx.cs" Inherits="WebDevFinalProject.AddPhysician" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
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

    <h2>Add New Physician</h2>



    <table border="0">

        <tr>
            <td>Physician ID:</td>
            <td>
                <asp:TextBox ID="txtPhysicianID" runat="server" />
                <asp:RequiredFieldValidator ID="rfvPhysicianID" runat="server"
                    ControlToValidate="txtPhysicianID"
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
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                ControlToValidate="txtDOB"
                ErrorMessage="* Required"
                CssClass="error" />
        </td>
        </tr>
        <tr>
            <td>Gender:</td>
            <td>

                <asp:DropDownList ID="cboGender" runat="server">
                    <asp:ListItem>MALE</asp:ListItem>
                    <asp:ListItem>FEMALE</asp:ListItem>
                </asp:DropDownList>

            </td>
        </tr>



        <!-- Address Section -->

        <tr>
            <td>Street Address:</td>
            <td>
                <asp:TextBox ID="txtStreet" runat="server" />
                <asp:RequiredFieldValidator ID="rfvStreet" runat="server"
                    ControlToValidate="txtStreet"
                    ErrorMessage="* Required"
                    CssClass="error" />
            </td>
        </tr>

        <tr>
            <td>City:</td>
            <td>
                <asp:TextBox ID="txtCity" runat="server" />
                <asp:RequiredFieldValidator ID="rfvCity" runat="server"
                    ControlToValidate="txtCity"
                    ErrorMessage="* Required"
                    CssClass="error" />
            </td>
        </tr>

        <tr>
            <td>State:</td>
            <td>
                <asp:TextBox ID="txtState" runat="server" Width="50px" />
                <asp:RequiredFieldValidator ID="rfvState" runat="server"
                    ControlToValidate="txtState"
                    ErrorMessage="* Required"
                    CssClass="error" />
            </td>
        </tr>

        <tr>
            <td>Zip:</td>
            <td>
                <asp:TextBox ID="txtZip" runat="server" MaxLength="5" Width="80px" />
                <asp:RequiredFieldValidator ID="rfvZip" runat="server"
                    ControlToValidate="txtZip"
                    ErrorMessage="* Required"
                    CssClass="error" />
            </td>
        </tr>

        <!-- Specialty Section -->

        <tr>
            <td>Specialty 1:</td>
            <td>
                <asp:TextBox ID="txtSpec1" runat="server" />
                <asp:RequiredFieldValidator ID="rfvSpec1" runat="server"
                    ControlToValidate="txtSpec1"
                    ErrorMessage="* Required"
                    CssClass="error" />
            </td>
        </tr>

        <tr>
            <td>Specialty 2:</td>
            <td>
                <asp:TextBox ID="txtSpec2" runat="server" />
            </td>
        </tr>

        <tr>
            <td>Specialty 3:</td>
            <td>
                <asp:TextBox ID="txtSpec3" runat="server" />
            </td>
        </tr>

        <tr>
            <td>Date Hired:</td>
            <td>
                <asp:TextBox ID="txtDateHired" runat="server" TextMode="Date" />
                <asp:RequiredFieldValidator ID="rfvDateHired" runat="server"
                    ControlToValidate="txtDateHired"
                    ErrorMessage="* Required"
                    CssClass="error" />
            </td>
        </tr>

        <tr>
            <td>Salary:</td>
            <td>
                <asp:TextBox ID="txtSalary" runat="server" />
                <asp:RequiredFieldValidator ID="rfvSalary" runat="server"
                    ControlToValidate="txtSalary"
                    ErrorMessage="* Required"
                    CssClass="error" />
            </td>
        </tr>

         <tr>
               <td>Work email:</td>
               <td>
                    <asp:TextBox ID="TxtWorkemail" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                       ControlToValidate="TxtWorkemail"
                        ErrorMessage="* Required"
                        CssClass="error" />
               </td>
           </tr>
        <tr>
      <td>Personal email:</td>
      <td>
           <asp:TextBox ID="txtPersonal" runat="server" />
           <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
              ControlToValidate="txtPersonal"
               ErrorMessage="* Required"
               CssClass="error" />
      </td>
  </tr>
        <tr>
    <td>Home Phone:</td>
    <td>
        <asp:TextBox ID="TxtHomePhone" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
            ControlToValidate="TxtHomePhone"
            ErrorMessage="* Required"
            CssClass="error" />
    </td>
</tr>
<tr>
<td>Cell Phone:</td>
<td>
    <asp:TextBox ID="TxtCellPhone" runat="server" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
        ControlToValidate="TxtCellPhone"
        ErrorMessage="* Required"
        CssClass="error" />
</td>
</tr>
<tr>
<td>Work Phone:</td>
<td>
    <asp:TextBox ID="TxtWorkPhone" runat="server" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
        ControlToValidate="TxtWorkPhone"
        ErrorMessage="* Required"
        CssClass="error" />
</td>








    </table>

    <div class="buttons">
        <asp:Button ID="btnAdd" runat="server" Text="Add Physician"
            OnClick="btnAdd_Click" />
        &nbsp;
        <asp:Button ID="btnClear" runat="server" Text="Clear"
            OnClick="btnClear_Click" />
    </div>

</div>
</asp:Content>
