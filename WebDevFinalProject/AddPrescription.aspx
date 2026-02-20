<%@ Page Title="" Language="C#" MasterPageFile="~/Main1.Master" AutoEventWireup="true" CodeBehind="AddPrescription.aspx.cs" Inherits="WebDevFinalProject.AddPrescription" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <!-- Optional JavaScript GOES BEFORE EVERYTHING ELSE -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" 				crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" 			crossorigin="anonymous"></script>

    <h2>Modify Prescription</h2>

    <div class="form-section">
        <label>RX #:</label>
        <asp:TextBox ID="txtRxNumber" runat="server"></asp:TextBox>
    </div>

    <div class="form-section">
        <label>Patient ID:</label>
        <asp:TextBox ID="txtPatientId" runat="server"></asp:TextBox>
    </div>
    
    <div class="form-section">
        <label>Physician ID:</label>
        <asp:TextBox ID="txtPhysicianId" runat="server"></asp:TextBox>
    </div>
    
    <div class="form-section">
        <label>Prescription Amount:</label>
        <asp:TextBox ID="txtPrescriptionAmt" runat="server"></asp:TextBox>
    </div>
    
    <div class="form-section">
        <label>Refill Count:</label>
        <asp:TextBox ID="txtRefillCount" runat="server"></asp:TextBox>
    </div>

    <div class="form-section">
        <label>Prescription Start Date:</label>
        <asp:Calendar ID="calPrescriptionStartDate" runat="server" style="margin-left: 200px;"></asp:Calendar>
    </div>
    
    <div class="form-section">
        <label>Prescription End Date:</label>
        <asp:Calendar ID="calPrescriptionEndDate" runat="server" style="margin-left: 200px;"></asp:Calendar>
    </div>


    <div class="form-section">
        <label>Medication Name:</label>
        <asp:TextBox ID="txtMedication" runat="server"></asp:TextBox>
    </div>

    <div class="form-section">
        <label>Dosage:</label>
        <asp:TextBox ID="txtDosage" runat="server" placeholder="e.g., 10mg"></asp:TextBox>
    </div>

    <div class="form-section">
        <label>Frequency:</label>
        <asp:TextBox ID="txtFrequency" runat="server"></asp:TextBox>
    </div>
    
    <div class="form-section">
        <label>Prescription Info:</label>
        <asp:TextBox ID="txtPrescritpionInfo" runat="server"></asp:TextBox>
    </div>

    <asp:Button ID="btnAdd" runat="server" Text="Add Prescription" CssClass="btn" OnClick="btnAdd_Click" />

</asp:Content>
