<%@ Page Title="" Language="C#" MasterPageFile="~/Main1.Master" AutoEventWireup="true" CodeBehind="AddPrescription.aspx.cs" Inherits="WebDevFinalProject.AddPrescription" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <title>Add Prescription</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

<div class="container-fluid mt-2">

    <div class="form-header">Add New Prescription</div>

    <div class="card shadow-sm p-4">

        <div class="form-group">
            <label class="form-label">RX #:</label>
            <asp:TextBox ID="txtRxNumber" runat="server" CssClass="form-control"
                ToolTip="Enter the prescription number (RX#)" MaxLength="6" />
            <asp:RequiredFieldValidator ID="rfvRx" runat="server"
                ControlToValidate="txtRxNumber" ErrorMessage="* Required" CssClass="error" />
        </div>

        <div class="form-group">
            <label class="form-label">Patient ID:</label>
            <asp:TextBox ID="txtPatientId" runat="server" CssClass="form-control"
                ToolTip="Enter the patient’s ID" MaxLength="6" />
            <asp:RequiredFieldValidator ID="rfvPatient" runat="server"
                ControlToValidate="txtPatientId" ErrorMessage="* Required" CssClass="error" />
        </div>

        <div class="form-group">
            <label class="form-label">Physician ID:</label>
            <asp:TextBox ID="txtPhysicianId" runat="server" CssClass="form-control"
                ToolTip="Enter the physician’s ID" MaxLength="6" />
            <asp:RequiredFieldValidator ID="rfvPhysician" runat="server"
                ControlToValidate="txtPhysicianId" ErrorMessage="* Required" CssClass="error" />
        </div>

        <hr />

        <div class="form-group">
            <label class="form-label">Prescription Amount:</label>
            <asp:TextBox ID="txtPrescriptionAmt" runat="server" CssClass="form-control"
                ToolTip="Enter the amount prescribed (optional)" MaxLength="6" />
        </div>

        <div class="form-group">
            <label class="form-label">Refill Count:</label>
            <asp:TextBox ID="txtRefillCount" runat="server" CssClass="form-control"
                ToolTip="Enter how many refills are allowed (optional)" MaxLength="9" />
        </div>

        <hr />

        <div class="form-group">
            <label class="form-label">Prescription Start Date:</label>
            <asp:TextBox ID="txtStartDate" runat="server" CssClass="form-control"
                ToolTip="Select the prescription start date" MaxLength="10" />
            <ajaxToolkit:CalendarExtender ID="CalendarExtenderStart" runat="server"
                TargetControlID="txtStartDate"
                Format="MM/dd/yyyy" />
        </div>

        <div class="form-group">
            <label class="form-label">Prescription End Date:</label>
            <asp:TextBox ID="txtEndDate" runat="server" CssClass="form-control"
                ToolTip="Select the prescription end date" MaxLength="10" />
            <ajaxToolkit:CalendarExtender ID="CalendarExtenderEnd" runat="server"
                TargetControlID="txtEndDate"
                Format="MM/dd/yyyy" />
        </div>

        <hr />

        <div class="form-group">
            <label class="form-label">Medication Name:</label>
            <asp:TextBox ID="txtMedication" runat="server" CssClass="form-control"
                ToolTip="Enter the medication name" MaxLength="25" />
            <asp:RequiredFieldValidator ID="rfvMedication" runat="server"
                ControlToValidate="txtMedication" ErrorMessage="* Required" CssClass="error" />
        </div>

        <div class="form-group">
            <label class="form-label">Dosage:</label>
            <asp:TextBox ID="txtDosage" runat="server" CssClass="form-control"
                ToolTip="Enter the dosage" MaxLength="25" />
            <asp:RequiredFieldValidator ID="rfvDosage" runat="server"
                ControlToValidate="txtDosage" ErrorMessage="* Required" CssClass="error" />
        </div>

        <div class="form-group">
            <label class="form-label">Prescription Info:</label>
            <asp:TextBox ID="txtPrescritpionInfo" runat="server" CssClass="form-control"
                ToolTip="Additional notes or instructions (optional)" MaxLength="50" />
        </div>

        <div class="text-right mt-3">
            <asp:Button ID="btnAdd" runat="server" Text="Add Prescription" CssClass="btn btn-primary"
                ToolTip="Click to save this prescription" OnClick="btnAdd_Click" />

            <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-secondary ml-2"
                ToolTip="Clear all fields" OnClick="btnClear_Click" />
        </div>

    </div>

</div>

</asp:Content>
