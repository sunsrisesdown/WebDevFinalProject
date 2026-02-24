<%@ Page Title="" Language="C#" MasterPageFile="~/Main1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebDevFinalProject.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <title>XYZ Clinic - Home</title>
    <style>
    .card-img-top {
    width: 100%;
    height: 220px; 
    object-fit: cover; 
    border-top-left-radius: 0.5rem;
    border-top-right-radius: 0.5rem;
    }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="container mt-4">

    <h2 class="text-center mb-4">Welcome to XYZ Clinic</h2>
    <p class="text-center mb-5">Select a section below to begin.</p>

    <div class="row g-4">
        <div class="col-md-4">
            <div class="card shadow-sm h-100">
                <asp:Image runat="server" ImageUrl="~/images/Patient.jpg" CssClass="card-img-top" alt="Physician" />
                <div class="card-body">
                    <h5 class="card-title">Add Patient</h5>
                    <p class="card-text">Add new patient record(s).</p>
                    <asp:HyperLink runat="server" NavigateUrl ="~/AddPatient.aspx" CssClass="btn btn-primary w-100">Manage Patients</asp:HyperLink>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card shadow-sm h-100">
                <asp:Image runat="server" ImageUrl="~/images/Physician.jpg" CssClass="card-img-top" alt="Physician" />
                <div class="card-body">
                    <h5 class="card-title">Add Physician</h5>
                    <p class="card-text">Add new physician record(s).</p>
                    <asp:HyperLink runat="server" NavigateUrl ="~/AddPhysician.aspx" CssClass="btn btn-primary w-100">Manage Physicians</asp:HyperLink>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card shadow-sm h-100">
                <asp:Image runat="server" ImageUrl="~/images/Add%20Prescription.jpg" CssClass="card-img-top" alt="Add Prescription" />
                <div class="card-body">
                    <h5 class="card-title">Add Prescription</h5>
                    <p class="card-text">Add new prescription record(s).</p>
                    <asp:HyperLink runat="server" NavigateUrl ="~/AddPrescription.aspx" CssClass="btn btn-primary w-100">Add Prescription</asp:HyperLink>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card shadow-sm h-100">
                <asp:Image runat="server" ImageUrl="~/images/ModifyPrescription.jpg" CssClass="card-img-top" alt="Modify Prescription" />
                <div class="card-body">
                    <h5 class="card-title">Modify Prescription</h5>
                    <p class="card-text">Update existing prescription record(s).</p>
                    <asp:HyperLink runat="server" NavigateUrl ="~/ModifyPrescription.aspx" CssClass="btn btn-primary w-100">Modify Prescription</asp:HyperLink>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card shadow-sm h-100">
                <asp:Image runat="server" ImageUrl="~/images/prescription_refills.jpg" CssClass="card-img-top" alt="Add Refill" />
                <div class="card-body">
                    <h5 class="card-title">Add Refill</h5>
                    <p class="card-text">Add new refill record(s).</p>
                    <asp:HyperLink runat="server" NavigateUrl ="~/AddRefill.aspx" CssClass="btn btn-primary w-100">Add Refill</asp:HyperLink>
                </div>
            </div>
        </div>


        <div class="col-md-4">
            <div class="card shadow-sm h-100">
                <asp:Image runat="server" ImageUrl="~/images/Modify%20Refill.jpeg" CssClass="card-img-top" alt="Modify Refill" />
                <div class="card-body">
                    <h5 class="card-title">Modify Refill</h5>
                    <p class="card-text">Update refill record(s).</p>
                    <asp:HyperLink runat="server" NavigateUrl ="~/ModifyRefill.aspx" CssClass="btn btn-primary w-100">Modify Refill</asp:HyperLink>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card shadow-sm h-100">
                <asp:Image runat="server" ImageUrl="~/images/View%20Patient.jpg" CssClass="card-img-top" alt="View Patient" />
                <div class="card-body">
                    <h5 class="card-title">View Patient</h5>
                    <p class="card-text">View all patient records and details.</p>
                    <asp:HyperLink runat="server" NavigateUrl ="~/ViewPatient.aspx" CssClass="btn btn-primary w-100">View Patients</asp:HyperLink>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card shadow-sm h-100">
                <asp:Image runat="server" ImageUrl="~/images/ViewPhysician.jpg" CssClass="card-img-top" alt="View Physician" />
                <div class="card-body">
                    <h5 class="card-title">View Physician</h5>
                    <p class="card-text">View all physician records and details.</p>
                    <asp:HyperLink runat="server" NavigateUrl ="~/ViewPhysician.aspx" CssClass="btn btn-primary w-100">View Physicians</asp:HyperLink>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card shadow-sm h-100">
                <asp:Image runat="server" ImageUrl= "~/images/ViewPrescrption.jpg" CssClass="card-img-top" alt="View Prescription" />
                <div class="card-body">
                    <h5 class="card-title">View Prescription</h5>
                    <p class="card-text">View all prescription records and details.</p>
                    <asp:HyperLink runat="server" NavigateUrl ="~/ViewPrescription.aspx" CssClass="btn btn-primary w-100">View Prescriptions</asp:HyperLink>
                </div>
            </div>
        </div>

        <div class="col-md-4" style="text-align:center">
            <div class="card shadow-sm h-100">
                <asp:Image runat="server" ImageUrl="~/images/ViewRefill.jpg" CssClass="card-img-top" alt="View Refills" />
                <div class="card-body">
                    <h5 class="card-title">View Refill(s)</h5>
                    <p class="card-text">View all refill records and details.</p>
                    <asp:HyperLink runat="server" NavigateUrl ="~/ViewRefill.aspx" CssClass="btn btn-primary w-100">View Refills</asp:HyperLink>
                </div>
            </div>
        </div>


    </div>

</div>

</asp:Content>
