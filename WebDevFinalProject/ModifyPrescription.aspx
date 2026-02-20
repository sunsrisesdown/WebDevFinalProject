<%@ Page Title="" Language="C#" MasterPageFile="~/Main1.Master" AutoEventWireup="true" CodeBehind="ModifyPrescription.aspx.cs" Inherits="WebDevFinalProject.ModifyPrescription" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <title>Modify Prescription</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

<div class="container-fluid mt-2">

    <div class="form-header">Modify Prescription</div>

    <div class="card shadow-sm p-4">

        <div class="form-group">
            <label class="form-label">RX #:</label>
            <div class="input-group">
                <asp:TextBox ID="txtRxNumber" runat="server" CssClass="form-control"
                    ToolTip="Enter the prescription number (RX#)" />
                <asp:Button ID="btnSearch" runat="server" Text="Search"
                    CssClass="btn btn-info ml-2"
                    ToolTip="Search for this prescription"
                    OnClick="btnSearch_Click" />
            </div>
        </div>

        <div class="form-group">
            <label class="form-label">Patient ID:</label>
            <asp:TextBox ID="txtPatientId" runat="server" CssClass="form-control"
                ToolTip="Enter the patient’s ID" />
        </div>

        <div class="form-group">
            <label class="form-label">Physician ID:</label>
            <asp:TextBox ID="txtPhysicianId" runat="server" CssClass="form-control"
                ToolTip="Enter the physician’s ID" />
        </div>

        <hr />

        <div class="form-group">
            <label class="form-label">Prescription Amount:</label>
            <asp:TextBox ID="txtPrescriptionAmt" runat="server" CssClass="form-control"
                ToolTip="Enter the amount prescribed (optional)" />
        </div>

        <div class="form-group">
            <label class="form-label">Refill Count:</label>
            <asp:TextBox ID="txtRefillCount" runat="server" CssClass="form-control"
                ToolTip="Enter how many refills are allowed (optional)" />
        </div>

        <hr />

        <div class="form-group">
            <label class="form-label">Prescription Start Date:</label>
            <asp:TextBox ID="txtStartDate" runat="server" CssClass="form-control"
                ToolTip="Select the prescription start date" />
            <ajaxToolkit:CalendarExtender ID="CalendarExtenderStart" runat="server"
                TargetControlID="txtStartDate"
                Format="MM/dd/yyyy" />
        </div>

        <div class="form-group">
            <label class="form-label">Prescription End Date:</label>
            <asp:TextBox ID="txtEndDate" runat="server" CssClass="form-control"
                ToolTip="Select the prescription end date" />
            <ajaxToolkit:CalendarExtender ID="CalendarExtenderEnd" runat="server"
                TargetControlID="txtEndDate"
                Format="MM/dd/yyyy" />
        </div>

        <hr />

        <div class="form-group">
            <label class="form-label">Medication Name:</label>
            <asp:TextBox ID="txtMedication" runat="server" CssClass="form-control"
                ToolTip="Enter the medication name" />
        </div>

        <div class="form-group">
            <label class="form-label">Dosage:</label>
            <asp:TextBox ID="txtDosage" runat="server" CssClass="form-control"
                ToolTip="Enter the dosage" />
        </div>

        <div class="form-group">
            <label class="form-label">Prescription Info:</label>
            <asp:TextBox ID="txtPrescritpionInfo" runat="server" CssClass="form-control"
                ToolTip="Additional notes or instructions (optional)" />
        </div>

        <div class="text-right mt-3">
            <asp:Button ID="btnUpdate" runat="server" Text="Update Prescription"
                CssClass="btn btn-primary"
                ToolTip="Click to update this prescription"
                OnClick="btnUpdate_Click" />

            <asp:Button ID="btnClear" runat="server" Text="Clear"
                CssClass="btn btn-secondary ml-2"
                ToolTip="Clear all fields"
                OnClick="btnClear_Click" />
        </div>

    </div>

</div>

</asp:Content>
