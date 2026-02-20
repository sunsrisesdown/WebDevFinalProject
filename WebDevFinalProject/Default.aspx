<%@ Page Title="" Language="C#" MasterPageFile="~/Main1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebDevFinalProject.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <title>XYZ Clinic - Home</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="container mt-4">

    <h2 class="text-center mb-4">Welcome to XYZ Clinic</h2>
    <p class="text-center mb-5">Select a section below to begin.</p>

    <div class="row g-4">
        <div class="col-md-4">
            <div class="card shadow-sm h-100">
                <img src="images/patient.jpg" class="card-img-top" alt="Patient">
                <div class="card-body">
                    <h5 class="card-title">Patient</h5>
                    <p class="card-text">Add new patients or view existing patient records.</p>
                    <a href="<%: ResolveUrl("~/AddPatient.aspx") %>" class="btn btn-primary w-100">Manage Patients</a>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card shadow-sm h-100">
                <img src="images/physician.jpg" class="card-img-top" alt="Physician">
                <div class="card-body">
                    <h5 class="card-title">Physician</h5>
                    <p class="card-text">Add or update physician information.</p>
                    <a href="<%: ResolveUrl("~/AddPhysician.aspx") %>" class="btn btn-primary w-100">Manage Physicians</a>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card shadow-sm h-100">
                <img src="images/prescription.jpg" class="card-img-top" alt="Prescription">
                <div class="card-body">
                    <h5 class="card-title">Add Prescription</h5>
                    <p class="card-text">Create a new prescription for a patient.</p>
                    <a href="<%: ResolveUrl("~/AddPrescription.aspx") %>" class="btn btn-primary w-100">Add Prescription</a>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card shadow-sm h-100">
                <img src="images/modify_prescription.jpg" class="card-img-top" alt="Modify Prescription">
                <div class="card-body">
                    <h5 class="card-title">Modify Prescription</h5>
                    <p class="card-text">Search and update existing prescriptions.</p>
                    <a href="<%: ResolveUrl("~/ModifyPrescription.aspx") %>" class="btn btn-primary w-100">Modify Prescription</a>
                </div>
            </div>
        </div>


        <div class="col-md-4">
            <div class="card shadow-sm h-100">
                <img src="images/refill.jpg" class="card-img-top" alt="Add Refill">
                <div class="card-body">
                    <h5 class="card-title">Add Refill</h5>
                    <p class="card-text">Add a refill to an existing prescription.</p>
                    <a href="<%: ResolveUrl("~/AddRefill.aspx") %>" class="btn btn-primary w-100">Add Refill</a>
                </div>
            </div>
        </div>


        <div class="col-md-4">
            <div class="card shadow-sm h-100">
                <img src="images/modify_refill.jpg" class="card-img-top" alt="Modify Refill">
                <div class="card-body">
                    <h5 class="card-title">Modify Refill</h5>
                    <p class="card-text">Search and update refill records.</p>
                    <a href="<%: ResolveUrl("~/ModifyRefill.aspx") %>" class="btn btn-primary w-100">Modify Refill</a>
                </div>
            </div>
        </div>


        <div class="col-md-4">
            <div class="card shadow-sm h-100">
                <img src="images/view.jpg" class="card-img-top" alt="View Records">
                <div class="card-body">
                    <h5 class="card-title">View Records</h5>
                    <p class="card-text">Browse all patients, physicians, prescriptions, and refills.</p>
                    <a href="<%: ResolveUrl("~/ViewPatient.aspx") %>" class="btn btn-primary w-100">View Records</a>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card shadow-sm h-100">
                <img src="images/view_patient.jpg" class="card-img-top" alt="View Patient">
                <div class="card-body">
                    <h5 class="card-title">View Patient</h5>
                    <p class="card-text">Browse all patient records and details.</p>
                    <a href="<%: ResolveUrl("~/ViewPatient.aspx") %>" class="btn btn-primary w-100">View Patients</a>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card shadow-sm h-100">
                <img src="images/view_physician.jpg" class="card-img-top" alt="View Physician">
                <div class="card-body">
                    <h5 class="card-title">View Physician</h5>
                    <p class="card-text">Review physician profiles and contact information.</p>
                    <a href="<%: ResolveUrl("~/ViewPhysician.aspx") %>" class="btn btn-primary w-100">View Physicians</a>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card shadow-sm h-100">
                <img src="images/view_prescription.jpg" class="card-img-top" alt="View Prescription">
                <div class="card-body">
                    <h5 class="card-title">View Prescription</h5>
                    <p class="card-text">Search and review all prescriptions on file.</p>
                    <a href="<%: ResolveUrl("~/ViewPrescription.aspx") %>" class="btn btn-primary w-100">View Prescriptions</a>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card shadow-sm h-100">
                <img src="images/view_refill.jpg" class="card-img-top" alt="View Refill">
                <div class="card-body">
                    <h5 class="card-title">View Refill(s)</h5>
                    <p class="card-text">Browse refill history and details for prescriptions.</p>
                    <a href="<%: ResolveUrl("~/ViewRefill.aspx") %>" class="btn btn-primary w-100">View Refills</a>
                </div>
            </div>
        </div>


    </div>

</div>

</asp:Content>
