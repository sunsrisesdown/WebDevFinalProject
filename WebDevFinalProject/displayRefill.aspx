<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="displayRefill.aspx.cs" Inherits="WebDevFinalProject.displayRefill" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Simple Form</title>

    <link href='<%= ResolveUrl("~/ImportedFiles/main.css") %>' rel="stylesheet" />

    <style>
        .popup-wrapper {
            width: 550px;
            margin: 80px auto;
        }

        .card {
            border-radius: 6px;
        }

        .form-header {
            font-size: 1.5em;
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
        .btn-primary {}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="popup-wrapper">
            <div class="form-header">Refill Details</div>

            <div class="card shadow-sm p-4">
                <div class="form-group">
                    <label class="form-label">Refill ID:</label>
                    <asp:TextBox ID="txtID" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label class="form-label">RX Number:</label>
                    <asp:TextBox ID="txtRX" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label class="form-label">Date Filled:</label>
                    <asp:TextBox ID="txtDate" runat="server" CssClass="form-control" />
                </div>

                <div class="text-right mt-3">
                    <asp:Button ID="btnClose" runat="server" Text="Close" CssClass="btn btn-primary" Width="93px" OnClick="btnClose_Click" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>