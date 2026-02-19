using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDevFinalProject
{
    public partial class AddPrescription : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string id = txtRxNumber.Text;
            decimal amount = Decimal.Parse(txtPrescriptionAmt.Text);
            string patient = txtPatientId.Text;
            string medication = txtMedication.Text;
            string dosage = txtDosage.Text;
            string frequency = txtFrequency.Text;
            string info = txtPrescritpionInfo.Text;
            string refillCount = txtRefillCount.Text;
            DateTime startDate = calPrescriptionStartDate.SelectedDate;
            DateTime endDate = calPrescriptionEndDate.SelectedDate;
            string physician = txtPhysicianId.Text;

            Response.Write("<script>alert('Prescription updated successfully');</script>");
        }
    }
}