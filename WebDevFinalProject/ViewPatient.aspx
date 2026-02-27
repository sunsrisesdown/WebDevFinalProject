<%@ Page Title="" Language="C#" MasterPageFile="~/Main1.Master" AutoEventWireup="true" CodeBehind="ViewPatient.aspx.cs" Inherits="WebDevFinalProject.pages.ViewPatient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="<%= ResolveUrl("~/ImportedFiles/main.css") %>" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        function SelectAll(cbId) {
            var grid = document.getElementById("<%= grdPatient.ClientID %>");
            if (!grid) return;

            for (var i = 1; i < grid.rows.length; i++) {
                var cells = grid.rows[i].cells;
                if (!cells || cells.length === 0) continue;
                var firstCell = cells[0];
                var inputs = firstCell.getElementsByTagName('input');
                for (var j = 0; j < inputs.length; j++) {
                    if (inputs[j].type === "checkbox") {
                        inputs[j].checked = document.getElementById(cbId).checked;
                    }
                }
            }
        }
    </script>

    <div class="container-fluid">
        <div class="row mb-3">
            <div class="col-auto">
                <asp:HyperLink ID="hplNew" runat="server" NavigateUrl="~/AddPatient.aspx" CssClass="btn btn-outline-primary">New Patient</asp:HyperLink>
            </div>
            <div class="col">
                <asp:Label ID="Label1" runat="server" Text="Search criteria" CssClass="h5"></asp:Label>
            </div>
        </div>

        <asp:Panel ID="pnlSearch" runat="server" CssClass="mb-3">
            <div class="card">
                <div class="card-body">
                    <div class="row g-2">
                        <div class="col-md-3">
                            <label class="form-label">Patient ID</label>
                            <asp:TextBox ID="txtStudentID" runat="server" CssClass="form-control" MaxLength="6"></asp:TextBox>
                        </div>
                        <div class="col-md-3">
                            <label class="form-label">First Name</label>
                            <asp:TextBox ID="txtFName" runat="server" CssClass="form-control" MaxLength="25"></asp:TextBox>
                        </div>
                        <div class="col-md-3">
                            <label class="form-label">Last Name</label>
                            <asp:TextBox ID="txtLName" runat="server" CssClass="form-control" MaxLength="25"></asp:TextBox>
                        </div>
                        <div class="col-md-3 d-flex align-items-end">
                            <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" CssClass="btn btn-primary" />
                        </div>
                    </div>
                </div>
            </div>
        </asp:Panel>

        <div class="patient-grid-container">
            <asp:GridView ID="grdPatient" AutoGenerateColumns="False" CssClass="GridView table-responsive" runat="server" Width="100%"
                AllowPaging="True" AllowSorting="True"
                OnSelectedIndexChanged="grdPatient_SelectedIndexChanged"
                OnPageIndexChanging="grdPatient_PageIndexChanging"
                OnRowDataBound="grdPatient_RowDataBound"
                OnSorting="grdPatient_Sorting">
                <PagerSettings Mode="NextPreviousFirstLast" FirstPageText="Go To First Page" LastPageText="Go To Last Page" Position="Top" />
                <Columns>
                    <asp:TemplateField HeaderText="Select">
                        <HeaderTemplate>
                            <asp:CheckBox ID="cbSelectAll" runat="server" onclick="SelectAll(this.id)" />
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="chkPatientID" runat="server" />
                            <asp:Label ID="hidPatientID" runat="server" Text='<%# Eval("Patient_ID") %>' Visible="false"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="fname" HeaderText="First Name" SortExpression="fname" />
                    <asp:BoundField DataField="lname" HeaderText="Last Name" SortExpression="lname" />
                    <asp:BoundField DataField="acct_bal" HeaderText="Account Balance" SortExpression="acct_bal" />
                    <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                    <asp:BoundField DataField="cell_phone" HeaderText="Phone" SortExpression="cell_phone" />

                    <asp:TemplateField HeaderText="View">
                        <ItemTemplate>
                            <asp:HyperLink ID="lnkView" runat="server" Text="View" Target="_blank"></asp:HyperLink>
                            <asp:Label ID="hidPatientID_View" runat="server" Text='<%# Eval("Patient_ID") %>' Visible="false"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="Actions">
                        <ItemTemplate>
                            <asp:LinkButton ID="lbtnDelete" runat="server" OnCommand="Delete_Click" CommandName="lbtnDelete" CommandArgument='<%# Eval("Patient_ID") %>' CssClass="btn btn-sm btn-outline-danger">Delete</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

                <EmptyDataTemplate>
                    <div class="text-center p-3">No Records Found Matching Your Search!</div>
                </EmptyDataTemplate>
            </asp:GridView>
        </div>
    </div>
</asp:Content>