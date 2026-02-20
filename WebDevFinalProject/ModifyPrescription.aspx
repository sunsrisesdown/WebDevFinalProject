<%@ Page Title="" Language="C#" MasterPageFile="~/Main1.Master" AutoEventWireup="true" CodeBehind="ModifyPrescription.aspx.cs" Inherits="WebDevFinalProject.ModifyPrescription" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="container-fluid mt-2">

    <div class="form-header">Modify Prescription</div>

    <div class="card shadow-sm p-4">

        <div class="form-group row">
            <label class="col-sm-3 col-form-label form-label">RX #:</label>
            <div class="col-sm-9">
                <asp:TextBox ID="txtRxNumber" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-3 col-form-label form-label">Patient ID:</label>
            <div class="col-sm-9">
                <asp:TextBox ID="txtPatientId" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-3 col-form-label form-label">Physician ID:</label>
            <div class="col-sm-9">
                <asp:TextBox ID="txtPhysicianId" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-3 col-form-label form-label">Prescription Amount:</label>
            <div class="col-sm-9">
                <asp:TextBox ID="txtPrescriptionAmt" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-3 col-form-label form-label">Refill Count:</label>
            <div class="col-sm-9">
                <asp:TextBox ID="txtRefillCount" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-3 col-form-label form-label">Prescription Start Date:</label>
            <div class="col-sm-9 calendar-container">
                <asp:Calendar ID="calPrescriptionStartDate" runat="server"></asp:Calendar>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-3 col-form-label form-label">Prescription End Date:</label>
            <div class="col-sm-9 calendar-container">
                <asp:Calendar ID="calPrescriptionEndDate" runat="server"></asp:Calendar>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-3 col-form-label form-label">Medication Name:</label>
            <div class="col-sm-9">
                <asp:TextBox ID="txtMedication" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-3 col-form-label form-label">Dosage:</label>
            <div class="col-sm-9">
                <asp:TextBox ID="txtDosage" runat="server" CssClass="form-control" placeholder="e.g., 10mg"></asp:TextBox>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-3 col-form-label form-label">Frequency:</label>
            <div class="col-sm-9">
                <asp:TextBox ID="txtFrequency" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-3 col-form-label form-label">Prescription Info:</label>
            <div class="col-sm-9">
                <asp:TextBox ID="txtPrescritpionInfo" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>

        <div class="text-right mt-3">
            <asp:Button ID="btnUpdate" runat="server" Text="Update Prescription" CssClass="btn btn-primary" OnClick="btnUpdate_Click" />
        </div>

    </div>

</div>

</asp:Content>
