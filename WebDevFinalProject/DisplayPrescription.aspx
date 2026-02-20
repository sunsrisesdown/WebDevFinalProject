<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayPrescription.aspx.cs" Inherits="WebDevFinalProject.DisplayPrescription" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Prescription Details</title>

    <link href="/ImportedFiles/main.css" rel="stylesheet" />

    <style>
        body {
            background-color: #f8f9fa;
        }

        .popup-wrapper {
            width: 650px;
            margin: 40px auto;
        }

        .card {
            border-radius: 6px;
        }

        .form-header {
            font-size: 1.6rem;
            font-weight: 600;
            margin-bottom: 20px;
            text-align: center;
        }

        .form-group {
            margin-bottom: 18px;
        }

        .form-label {
            font-weight: 600;
            margin-bottom: 6px;
            display: block;
        }

        .btn-close {
            min-width: 120px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">

        <div class="popup-wrapper">

            <div class="form-header">Prescription Details</div>

            <div class="card shadow-sm p-4">

                <div class="form-group">
                    <label class="form-label">RX Number:</label>
                    <asp:TextBox ID="txtRX" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label class="form-label">Prescription Cost:</label>
                    <asp:TextBox ID="txtAMT" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label class="form-label">Prescription Start Date:</label>
                    <asp:TextBox ID="txtSTART" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label class="form-label">Prescription End Date:</label>
                    <asp:TextBox ID="txtEND" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label class="form-label">Allowed Count:</label>
                    <asp:TextBox ID="txtCOUNT" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label class="form-label">Patient ID:</label>
                    <asp:TextBox ID="txtPAT" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label class="form-label">Physician ID:</label>
                    <asp:TextBox ID="txtPHY" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label class="form-label">Medication Name:</label>
                    <asp:TextBox ID="txtNAME" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label class="form-label">Prescription Dosage:</label>
                    <asp:TextBox ID="txtDOSAGE" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label class="form-label">Prescription Information:</label>
                    <asp:TextBox ID="txtINFO" runat="server" CssClass="form-control" />
                </div>

                <div class="text-right mt-3">
                    <asp:Button ID="btnClose" runat="server" Text="Close"
                        CssClass="btn btn-secondary btn-close"
                        OnClick="btnClose_Click" />
                </div>

            </div>
        </div>

    </form>
</body>
</html>
