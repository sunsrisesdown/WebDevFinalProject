<%@ Page Title="" Language="C#" MasterPageFile="~/Main1.Master" AutoEventWireup="true" CodeBehind="AddRefill.aspx.cs" Inherits="WebDevFinalProject.AddRefill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <title>Add Refill</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

<div class="container-fluid mt-2">

    <div class="form-header">Add Refill</div>

    <div class="card shadow-sm p-4">

        <div class="form-group">
            <label class="form-label">RX Number:</label>
            <asp:TextBox ID="TxtBoxNumber" runat="server" CssClass="form-control"
                ToolTip="Enter the prescription RX number" />
            <asp:RequiredFieldValidator ID="RFV1" runat="server"
                ControlToValidate="TxtBoxNumber"
                ErrorMessage="You need an RX Number"
                CssClass="error" />
        </div>

        <hr />

        <div class="form-group">
            <label class="form-label">Refill ID:</label>
            <asp:TextBox ID="TxtBoxID" runat="server" CssClass="form-control"
                ToolTip="Enter the refill ID" />
            <asp:RequiredFieldValidator ID="RFV2" runat="server"
                ControlToValidate="TxtBoxID"
                ErrorMessage="You need a Refill ID"
                CssClass="error" />
        </div>

        <hr />

        <div class="form-group">
            <label class="form-label">Refill Date:</label>
            <asp:TextBox ID="TxtRefillDate" runat="server" CssClass="form-control"
                ToolTip="Select the date this refill was filled (optional)" />
            <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server"
                TargetControlID="TxtRefillDate"
                Format="MM/dd/yyyy" />
        </div>

        <hr />

        <div class="text-right mt-3">
            <asp:Button ID="BtnRefill" runat="server" Text="Refill" CssClass="btn btn-primary"
                ToolTip="Click to add this refill" OnClick="BtnRefill_Click" />
            <asp:Button ID="BtnClear" runat="server" Text="Clear" CssClass="btn btn-secondary ml-2"
                ToolTip="Clear all fields" OnClick="BtnClear_Click" />
        </div>

    </div>

</div>

</asp:Content>
