<%@ Page Title="" Language="C#" MasterPageFile="~/Main1.Master" AutoEventWireup="true" CodeBehind="ViewRefill.aspx.cs" Inherits="WebDevFinalProject.ViewRefill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="<%= ResolveUrl("~/ImportedFiles/main.css") %>" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        function SelectAll(cbId) {
            var grid = document.getElementById("<%= grdRefills.ClientID %>");
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
                <asp:HyperLink ID="hplNew" runat="server" NavigateUrl="~/AddRefill.aspx" CssClass="btn btn-outline-primary">New Refill</asp:HyperLink>
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
                            <label class="form-label">Refill ID</label>
                            <asp:TextBox ID="txtrefill_ID" runat="server" CssClass="form-control" MaxLength="9"></asp:TextBox>
                        </div>
                        <div class="col-md-3">
                            <label class="form-label">RX Number</label>
                            <asp:TextBox ID="txtRX_Number" runat="server" CssClass="form-control" MaxLength="6"></asp:TextBox>
                        </div>
                        <div class="col-md-3 d-flex align-items-end">
                            <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" CssClass="btn btn-primary" />
                        </div>
                    </div>
                </div>
            </div>
        </asp:Panel>

        <div class="physician-grid-container">
            <asp:GridView ID="grdRefills" AutoGenerateColumns="False" CssClass="GridView table-responsive" runat="server" Width="100%"
                AllowPaging="True" AllowSorting="True"
                OnSelectedIndexChanged="grdRefills_SelectedIndexChanged"
                OnPageIndexChanging="grdRefills_PageIndexChanging"
                OnRowDataBound="grdRefills_RowDataBound"
                OnSorting="grdRefills_Sorting">
                <PagerSettings Mode="NextPreviousFirstLast" FirstPageText="Go To First Page" LastPageText="Go To Last Page" Position="Top" />
                <Columns>
                    <asp:TemplateField HeaderText="Select">
                        <HeaderTemplate>
                            <asp:CheckBox ID="cbSelectAll" runat="server" onclick="SelectAll(this.id)" />
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="chkrefill_id" runat="server" />
                            <asp:Label ID="hidrefill_id" runat="server" Text='<%# Eval("refill_id") %>' Visible="false"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="rx_number" HeaderText="RX Number" SortExpression="rx_number" />
                    <asp:BoundField DataField="date_filled" HeaderText="Date Filled" SortExpression="date_filled" />


                     <asp:TemplateField HeaderText="View">
                        <ItemTemplate>
                           <asp:HyperLink ID="lnkView" runat="server" Text="View" Target="_blank"></asp:HyperLink>
                            <asp:Label ID="hidRefillID" runat="server" Text='<%# Eval("refill_id") %>' Visible="false"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>



                    <asp:TemplateField HeaderText="Actions">
                        <ItemTemplate>
                            <asp:LinkButton ID="lbtnEdit" runat="server" OnCommand="lbtnEdit_Click" CommandName="lbtnEdit" CommandArgument='<%# Eval("refill_id") %>' CssClass="btn btn-sm btn-outline-secondary">Edit</asp:LinkButton>
                            &nbsp;
                            <asp:LinkButton ID="lbtnDelete" runat="server" OnCommand="Delete_Click" CommandName="lbtnDelete" CommandArgument='<%# Eval("refill_id") %>' CssClass="btn btn-sm btn-outline-danger">Delete</asp:LinkButton>
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