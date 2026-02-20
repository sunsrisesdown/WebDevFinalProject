<%@ Page Title="" Language="C#" MasterPageFile="~/Main1.Master" AutoEventWireup="true" CodeBehind="AddPatient.aspx.cs" Inherits="WebDevFinalProject.AddPatient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <title>Add Patient</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

<div class="container-fluid mt-2">

    <div class="form-header">Add New Patient</div>

    <div class="card shadow-sm p-4">

        <div class="form-group">
            <label class="form-label">Patient ID:</label>
            <asp:TextBox ID="txtPatient" runat="server" CssClass="form-control"
                ToolTip="Enter the patient ID" />
            <asp:RequiredFieldValidator ID="rfvPatient" runat="server"
                ControlToValidate="txtPatient" ErrorMessage="* Required" CssClass="error" />
        </div>

        <div class="form-group">
            <label class="form-label">First Name:</label>
            <asp:TextBox ID="txtFirst" runat="server" CssClass="form-control"
                ToolTip="Enter the patient's first name" />
            <asp:RequiredFieldValidator ID="rfvFirst" runat="server"
                ControlToValidate="txtFirst" ErrorMessage="* Required" CssClass="error" />
        </div>

        <div class="form-group">
            <label class="form-label">Middle Initial:</label>
            <asp:TextBox ID="txtMiddle" runat="server" CssClass="form-control" MaxLength="1"
                Style="max-width:80px;" ToolTip="Enter middle initial (optional)" />
        </div>

        <div class="form-group">
            <label class="form-label">Last Name:</label>
            <asp:TextBox ID="txtLast" runat="server" CssClass="form-control"
                ToolTip="Enter the patient's last name" />
            <asp:RequiredFieldValidator ID="rfvLast" runat="server"
                ControlToValidate="txtLast" ErrorMessage="* Required" CssClass="error" />
        </div>

        <div class="form-group">
            <label class="form-label">Date of Birth:</label>
            <asp:TextBox ID="txtDOB" runat="server" CssClass="form-control"
                ToolTip="Select the patient's date of birth" />
            <ajaxToolkit:CalendarExtender ID="DOB_Calendar" runat="server"
                TargetControlID="txtDOB"
                Format="MM/dd/yyyy" />
            <asp:RequiredFieldValidator ID="rfvDOB" runat="server"
                ControlToValidate="txtDOB" ErrorMessage="* Required" CssClass="error" />
        </div>

        <div class="form-group">
            <label class="form-label">Gender:</label>
            <asp:DropDownList ID="cboGender" runat="server" CssClass="form-control"
                ToolTip="Select the patient's gender">
                <asp:ListItem Text="Select Gender" Value="" />
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="form-group">
            <label class="form-label">Account Balance:</label>
            <asp:TextBox ID="txtAcct" runat="server" CssClass="form-control"
                ToolTip="Enter the patient's account balance" />
            <asp:RequiredFieldValidator ID="rfvAcct" runat="server"
                ControlToValidate="txtAcct" ErrorMessage="* Required" CssClass="error" />
        </div>

        <hr />

        <div class="form-group">
            <label class="form-label">Street:</label>
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
                Style="max-width:120px;" ToolTip="Enter the ZIP code (optional)" />
        </div>

        <hr />

        <div class="form-group">
            <label class="form-label">Home Phone:</label>
            <asp:TextBox ID="txtHome" runat="server" CssClass="form-control"
                ToolTip="Enter the home phone number (optional)" />
        </div>

        <div class="form-group">
            <label class="form-label">Cell Phone:</label>
            <asp:TextBox ID="txtCell" runat="server" CssClass="form-control"
                ToolTip="Enter the cell phone number (optional)" />
        </div>

        <div class="form-group">
            <label class="form-label">Work Phone:</label>
            <asp:TextBox ID="txtWorkP" runat="server" CssClass="form-control"
                ToolTip="Enter the work phone number (optional)" />
        </div>

        <div class="form-group">
            <label class="form-label">Work Email:</label>
            <asp:TextBox ID="txtWorkE" runat="server" CssClass="form-control"
                ToolTip="Enter the work email (optional)" />
        </div>

        <div class="form-group">
            <label class="form-label">Personal Email:</label>
            <asp:TextBox ID="txtPersE" runat="server" CssClass="form-control"
                ToolTip="Enter the personal email (optional)" />
        </div>

        <hr />

        <div class="text-right mt-3">
            <asp:Button ID="btnAdd" runat="server" Text="Add Patient" CssClass="btn btn-primary"
                ToolTip="Click to add this patient" OnClick="btnAdd_Click" />
            <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-secondary ml-2"
                ToolTip="Clear all fields" OnClick="btnClear_Click" />
        </div>

    </div>

</div>

</asp:Content>
