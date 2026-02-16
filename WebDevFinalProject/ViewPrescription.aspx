<%@ Page Title="" Language="C#" MasterPageFile="~/Main1.Master" AutoEventWireup="true" CodeBehind="ViewPrescription.aspx.cs" Inherits="WebDevFinalProject.ViewPrescription" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="/ImportedFiles/main.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        function SelectAll(cbId) {
            var grid = document.getElementById("<%= grdPrescription.ClientID %>");
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
                <asp:HyperLink ID="hplNew" runat="server" NavigateUrl="~/AddPhysician.aspx?ID=0" CssClass="btn btn-outline-primary">New Patient</asp:HyperLink>
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
                            <label class="form-label">Prescription ID</label>
                            <asp:TextBox ID="txtPrescription_ID" runat="server" CssClass="form-control" MaxLength="6"></asp:TextBox>
                        </div>
                        <div class="col-md-3">
                            <label class="form-label">First Name</label>
                            <asp:TextBox ID="txtFName" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-3">
                            <label class="form-label">Last Name</label>
                            <asp:TextBox ID="txtLName" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-3 d-flex align-items-end">
                            <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" CssClass="btn btn-primary" />
                        </div>
                    </div>
                </div>
            </div>
        </asp:Panel>

        <div class="physician-grid-container">
            <asp:GridView ID="grdPrescription" AutoGenerateColumns="False" CssClass="GridView table-responsive" runat="server" Width="100%"
                AllowPaging="True" AllowSorting="True"
                OnSelectedIndexChanged="grdPrescription_SelectedIndexChanged"
                OnPageIndexChanging="grdPrescription_PageIndexChanging"
                OnRowDataBound="grdPrescription_RowDataBound"
                OnSorting="grdPrescription_Sorting">
                <PagerSettings Mode="NextPreviousFirstLast" FirstPageText="Go To First Page" LastPageText="Go To Last Page" Position="Top" />
                <Columns>
                    <asp:TemplateField HeaderText="Select">
                        <HeaderTemplate>
                            <asp:CheckBox ID="cbSelectAll" runat="server" onclick="SelectAll(this.id)" />
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="chkRX_Number" runat="server" />
                            <asp:Label ID="hidRX_Number" runat="server" Text='<%# Eval("RX_Number") %>' Visible="false"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <%-- start to fix --%>
                    <asp:BoundField DataField="medication_name" HeaderText="Mediciation Name" SortExpression="medication_name" />
                    <asp:BoundField DataField="presciption_amt" HeaderText="Prescription Cost" SortExpression="presciption_amt" />
                    <asp:BoundField DataField="refill_allowed_count" HeaderText="Refill Allowed Count" SortExpression="refill_allowed_count" />
                    <asp:BoundField DataField="prescription_dosage" HeaderText="Prescription Dosage" SortExpression="prescription_dosage" />


                    <asp:HyperLinkField DataNavigateUrlFields="RX_Number"
                        DataNavigateUrlFormatString="~/Display.aspx?ID={0}&type=view"
                        HeaderText="View" Text="View" Target="_blank" />

                    <asp:TemplateField HeaderText="Actions">
                        <ItemTemplate>
                            <asp:LinkButton ID="lbtnEdit" runat="server" OnCommand="lbtnEdit_Click" CommandName="lbtnEdit" CommandArgument='<%# Eval("RX_Number") %>' CssClass="btn btn-sm btn-outline-secondary">Edit</asp:LinkButton>
                            &nbsp;
                            <asp:LinkButton ID="lbtnDelete" runat="server" OnCommand="Delete_Click" CommandName="lbtnDelete" CommandArgument='<%# Eval("RX_Number") %>' CssClass="btn btn-sm btn-outline-danger">Delete</asp:LinkButton>
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
