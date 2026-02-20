<%@ Page Title="" Language="C#" MasterPageFile="~/Main1.Master" AutoEventWireup="true" CodeBehind="AddPhysician.aspx.cs" Inherits="WebDevFinalProject.AddPhysician" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <title>Add Physician</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

<div class="container-fluid mt-2">

    <div class="form-header">Add New Physician</div>

    <div class="card shadow-sm p-4">

        <div class="form-group">
            <label class="form-label">Physician ID:</label>
            <asp:TextBox ID="txtPhysicianID" runat="server" CssClass="form-control"
                ToolTip="Enter the physician ID" />
            <asp:RequiredFieldValidator ID="rfvPhysicianID" runat="server"
                ControlToValidate="txtPhysicianID" ErrorMessage="* Required" CssClass="error" />
        </div>

        <div class="form-group">
            <label class="form-label">First Name:</label>
            <asp:TextBox ID="txtFirst" runat="server" CssClass="form-control"
                ToolTip="Enter the physician's first name" />
            <asp:RequiredFieldValidator ID="rfvFirst" runat="server"
                ControlToValidate="txtFirst" ErrorMessage="* Required" CssClass="error" />
        </div>

        <div class="form-group">
            <label class="form-label">Middle Initial:</label>
            <asp:TextBox ID="txtMiddle" runat="server" CssClass="form-control" MaxLength="1"
                ToolTip="Enter middle initial (optional)" />
        </div>

        <div class="form-group">
            <label class="form-label">Last Name:</label>
            <asp:TextBox ID="txtLast" runat="server" CssClass="form-control"
                ToolTip="Enter the physician's last name" />
            <asp:RequiredFieldValidator ID="rfvLast" runat="server"
                ControlToValidate="txtLast" ErrorMessage="* Required" CssClass="error" />
        </div>

        <div class="form-group">
            <label class="form-label">Date of Birth:</label>
            <asp:TextBox ID="txtDOB" runat="server" CssClass="form-control"
                ToolTip="Select the physician's date of birth" />
            <ajaxToolkit:CalendarExtender ID="DOB_Calendar" runat="server"
                TargetControlID="txtDOB"
                Format="MM/dd/yyyy" />
            <asp:RequiredFieldValidator ID="rfvDOB" runat="server"
                ControlToValidate="txtDOB" ErrorMessage="* Required" CssClass="error" />
        </div>

        <div class="form-group">
            <label class="form-label">Gender:</label>
            <asp:DropDownList ID="cboGender" runat="server" CssClass="form-control"
                ToolTip="Select the physician's gender">
                <asp:ListItem Text="Select Gender" Value="" />
                <asp:ListItem>MALE</asp:ListItem>
                <asp:ListItem>FEMALE</asp:ListItem>
                <asp:ListItem>OTHER</asp:ListItem>
            </asp:DropDownList>
        </div>

        <hr />

        <div class="form-group">
            <label class="form-label">Street Address:</label>
            <asp:TextBox ID="txtStreet" runat="server" CssClass="form-control"
                ToolTip="Enter the street address (optional)" />
        </div>

        <div class="form-group">
            <label class="form-label">City:</label>
            <asp:TextBox ID="txtCity" runat="server" CssClass="form-control"
                ToolTip="Enter the city (optional)" />
        </div>

        <div class="form-group">
            <label class="form-label">State:</label>
            <asp:DropDownList ID="cboState" runat="server" CssClass="form-control"
                Style="max-width:200px;" ToolTip="Select the state" />
        </div>

        <div class="form-group">
            <label class="form-label">Zip:</label>
            <asp:TextBox ID="txtZip" runat="server" CssClass="form-control" MaxLength="5"
                ToolTip="Enter the ZIP code (optional)" />
        </div>

        <hr />

        <div class="form-group">
            <label class="form-label">Specialty 1:</label>
            <asp:TextBox ID="txtSpec1" runat="server" CssClass="form-control"
                ToolTip="Enter the primary specialty (optional)" />
        </div>

        <div class="form-group">
            <label class="form-label">Specialty 2:</label>
            <asp:TextBox ID="txtSpec2" runat="server" CssClass="form-control"
                ToolTip="Enter a secondary specialty (optional)" />
        </div>

        <div class="form-group">
            <label class="form-label">Specialty 3:</label>
            <asp:TextBox ID="txtSpec3" runat="server" CssClass="form-control"
                ToolTip="Enter a third specialty (optional)" />
        </div>

        <div class="form-group">
            <label class="form-label">Date Hired:</label>
            <asp:TextBox ID="txtDateHired" runat="server" CssClass="form-control"
                ToolTip="Select the hire date" />
            <ajaxToolkit:CalendarExtender ID="Hired_Calendar" runat="server"
                TargetControlID="txtDateHired"
                Format="MM/dd/yyyy" />
            <asp:RequiredFieldValidator ID="rfvDateHired" runat="server"
                ControlToValidate="txtDateHired" ErrorMessage="* Required" CssClass="error" />
        </div>

        <div class="form-group">
            <label class="form-label">Salary:</label>
            <asp:TextBox ID="txtSalary" runat="server" CssClass="form-control"
                ToolTip="Enter the salary" />
            <asp:RequiredFieldValidator ID="rfvSalary" runat="server"
                ControlToValidate="txtSalary" ErrorMessage="* Required" CssClass="error" />
        </div>

        <hr />

        <div class="form-group">
            <label class="form-label">Work Email:</label>
            <asp:TextBox ID="TxtWorkemail" runat="server" CssClass="form-control"
                ToolTip="Enter the work email (optional)" />
        </div>

        <div class="form-group">
            <label class="form-label">Personal Email:</label>
            <asp:TextBox ID="txtPersonal" runat="server" CssClass="form-control"
                ToolTip="Enter the personal email (optional)" />
        </div>

        <div class="form-group">
            <label class="form-label">Home Phone:</label>
            <asp:TextBox ID="TxtHomePhone" runat="server" CssClass="form-control"
                ToolTip="Enter the home phone number (optional)" />
        </div>

        <div class="form-group">
            <label class="form-label">Cell Phone:</label>
            <asp:TextBox ID="TxtCellPhone" runat="server" CssClass="form-control"
                ToolTip="Enter the cell phone number (optional)" />
        </div>

        <div class="form-group">
            <label class="form-label">Work Phone:</label>
            <asp:TextBox ID="TxtWorkPhone" runat="server" CssClass="form-control"
                ToolTip="Enter the work phone number (optional)" />
        </div>

        <div class="text-right mt-3">
            <asp:Button ID="btnAdd" runat="server" Text="Add Physician" CssClass="btn btn-primary"
                ToolTip="Click to add this physician" OnClick="btnAdd_Click" />
            <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-secondary ml-2"
                ToolTip="Clear all fields" OnClick="btnClear_Click" />
        </div>

    </div>

</div>

</asp:Content>
