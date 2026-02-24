<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayPatient.aspx.cs" Inherits="WebDevFinalProject.DisplayPatient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Display Patient</title>
    <link href="~/ImportedFiles/main.css" rel="stylesheet" />


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
            <div class="form-header">Patient Details</div>

            <div class="card shadow-sm p-4">

                <div class="form-group">
                    <label class="form-label">Patient ID:</label>
                    <asp:TextBox ID="txtID" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label class="form-label">First Name:</label>
                    <asp:TextBox ID="txtFN" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label class="form-label">Last Name:</label>
                    <asp:TextBox ID="txtLN" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label class="form-label">Middle Name:</label>
                    <asp:TextBox ID="txtMI" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label class="form-label">Date of Birth:</label>
                    <asp:TextBox ID="txtDOB" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label class="form-label">Gender:</label>
                    <asp:TextBox ID="txtGEN" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label class="form-label">Account Balance:</label>
                    <asp:TextBox ID="txtACC" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label class="form-label">Work Email:</label>
                    <asp:TextBox ID="txtWE" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label class="form-label">Personal Email:</label>
                    <asp:TextBox ID="txtPE" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label class="form-label">Home Phone:</label>
                    <asp:TextBox ID="txtHP" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label class="form-label">Cell Phone:</label>
                    <asp:TextBox ID="txtCellP" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label class="form-label">Work Phone:</label>
                    <asp:TextBox ID="txtWP" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label class="form-label">Address:</label>
                    <asp:TextBox ID="txtADD" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label class="form-label">City:</label>
                    <asp:TextBox ID="txtCIT" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label class="form-label">State:</label>
                    <asp:TextBox ID="txtSTA" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label class="form-label">ZIP:</label>
                    <asp:TextBox ID="txtZIPa" runat="server" CssClass="form-control" />
                </div>

                <div class="text-right mt-3">
                    <asp:Button ID="btnClose" runat="server" Text="Close"
                        CssClass="btn btn-secondary btn-close" OnClick="btnClose_Click" />
                </div>

            </div>
        </div>

    </form>
</body>
</html>
