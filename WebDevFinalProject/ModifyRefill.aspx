<%@ Page Title="" Language="C#" MasterPageFile="~/Main1.Master" AutoEventWireup="true" CodeBehind="ModifyRefill.aspx.cs" Inherits="WebDevFinalProject.ModifyRefill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <title>Modify Refill</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

<div class="container-fluid mt-2">

    <div class="form-header">Modify Refill</div>

    <div class="card shadow-sm p-4">

        <div class="form-group">
            <label class="form-label">Refill ID:</label>

            <div class="input-group">
                <asp:TextBox ID="TxtBoxID" runat="server" CssClass="form-control"
                    ToolTip="Enter the refill ID to search" />
                <asp:Button ID="BtnSearch" runat="server" Text="Search"
                    CssClass="btn btn-info ml-2"
                    ToolTip="Search for this refill"
                    OnClick="BtnSearch_Click" />
            </div>

            <asp:RequiredFieldValidator ID="RFV1" runat="server"
                ControlToValidate="TxtBoxID"
                ErrorMessage="You need a Refill ID"
                CssClass="error" />
        </div>

        <hr />

        <div class="form-group">
            <label class="form-label">RX Number:</label>
            <asp:TextBox ID="TxtBoxNumber" runat="server" CssClass="form-control"
                ToolTip="Enter the RX number for this refill" />
        </div>

        <hr />

        <div class="form-group">
            <label class="form-label">Refill Date:</label>
            <asp:TextBox ID="TxtRefillDate" runat="server" CssClass="form-control"
                ToolTip="Select the refill date (optional)" />
            <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server"
                TargetControlID="TxtRefillDate"
                Format="MM/dd/yyyy" />
        </div>

        <hr />

        <div class="text-right mt-3">
            <asp:Button ID="BtnUpdate" runat="server" Text="Update"
                CssClass="btn btn-primary"
                ToolTip="Update this refill"
                OnClick="BtnUpdate_Click" />

            <asp:Button ID="BtnClear" runat="server" Text="Clear"
                CssClass="btn btn-secondary ml-2"
                ToolTip="Clear all fields"
                OnClick="BtnClear_Click" />
        </div>

    </div>

</div>

</asp:Content>
