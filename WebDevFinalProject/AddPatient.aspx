<%@ Page Title="" Language="C#" MasterPageFile="~/Main1.Master" AutoEventWireup="true" CodeBehind="AddPatient.aspx.cs" Inherits="WebDevFinalProject.AddPatient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <title>Add Patient</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="container-fluid mt-2">

    <div class="form-header">Add New Patient</div>

    <div class="card shadow-sm p-4">

        <div class="form-group row">
            <label class="col-sm-3 col-form-label form-label">Patient ID:</label>
            <div class="col-sm-9">
                <asp:TextBox ID="txtPatient" runat="server" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="rfvPatient" runat="server"
                    ControlToValidate="txtPatient"
                    ErrorMessage="* Required"
                    CssClass="error" />
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-3 col-form-label form-label">First Name:</label>
            <div class="col-sm-9">
                <asp:TextBox ID="txtFirst" runat="server" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="rfvFirst" runat="server"
                    ControlToValidate="txtFirst"
                    ErrorMessage="* Required"
                    CssClass="error" />
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-3 col-form-label form-label">Middle Initial:</label>
            <div class="col-sm-9">
                <asp:TextBox ID="txtMiddle" runat="server" CssClass="form-control" MaxLength="1" Style="max-width:80px;" />
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-3 col-form-label form-label">Last Name:</label>
            <div class="col-sm-9">
                <asp:TextBox ID="txtLast" runat="server" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="rfvLast" runat="server"
                    ControlToValidate="txtLast"
                    ErrorMessage="* Required"
                    CssClass="error" />
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-3 col-form-label form-label">Date of Birth:</label>
            <div class="col-sm-9">
                <asp:TextBox ID="txtDOB" runat="server" TextMode="Date" CssClass="form-control" />
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-3 col-form-label form-label">Gender:</label>
            <div class="col-sm-9">
                <asp:DropDownList ID="cboGender" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Select Gender" Value="" />
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-3 col-form-label form-label">Account Balance:</label>
            <div class="col-sm-9">
                <asp:TextBox ID="txtAcct" runat="server" CssClass="form-control" />
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-3 col-form-label form-label">Street:</label>
            <div class="col-sm-9">
                <asp:TextBox ID="txtStreet" runat="server" CssClass="form-control" />
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-3 col-form-label form-label">City:</label>
            <div class="col-sm-9">
                <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" />
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-3 col-form-label form-label">State:</label>
            <div class="col-sm-9">
                <asp:TextBox ID="txtState" runat="server" CssClass="form-control" Style="max-width:100px;" />
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-3 col-form-label form-label">Zip:</label>
            <div class="col-sm-9">
                <asp:TextBox ID="txtZip" runat="server" CssClass="form-control" MaxLength="5" Style="max-width:120px;" />
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-3 col-form-label form-label">Home Phone:</label>
            <div class="col-sm-9">
                <asp:TextBox ID="txtHome" runat="server" CssClass="form-control" />
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-3 col-form-label form-label">Cell Phone:</label>
            <div class="col-sm-9">
                <asp:TextBox ID="txtCell" runat="server" CssClass="form-control" />
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-3 col-form-label form-label">Work Phone:</label>
            <div class="col-sm-9">
                <asp:TextBox ID="txtWorkP" runat="server" CssClass="form-control" />
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-3 col-form-label form-label">Work Email:</label>
            <div class="col-sm-9">
                <asp:TextBox ID="txtWorkE" runat="server" CssClass="form-control" />
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-3 col-form-label form-label">Personal Email:</label>
            <div class="col-sm-9">
                <asp:TextBox ID="txtPersE" runat="server" CssClass="form-control" />
            </div>
        </div>

        <div class="text-right mt-3">
            <asp:Button ID="btnAdd" runat="server" Text="Add Patient" CssClass="btn btn-primary" OnClick="btnAdd_Click" />
            <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-secondary ml-2" OnClick="btnClear_Click" />
        </div>

    </div>

</div>

</asp:Content>
