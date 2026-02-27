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
            try
            {
                decimal amount = Decimal.Parse(txtPrescriptionAmt.Text);
                if (amount >= 0)
                {
                    try
                    {
                        Int32 refillCount = Int32.Parse(txtRefillCount.Text);
                        if (refillCount > 0)
                        {
                            try
                            {
                                DateTime startDate = DateTime.Parse(txtStartDate.Text);
                                try
                                {

                                    DateTime endDate = DateTime.Parse(txtEndDate.Text);
                                    if (startDate != endDate && startDate < endDate)
                                    {

                                        try
                                        {
                                            DataTier dt = new DataTier();
                                            string id = txtRxNumber.Text;
                                            string patient = txtPatientId.Text;
                                            string physician = txtPhysicianId.Text;
                                            string medication = txtMedication.Text;
                                            string dosage = txtDosage.Text;
                                            string info = txtPrescritpionInfo.Text;
                                            dt.AddPrescription(patient, id, medication, dosage, startDate.ToString("yyyy-MM-dd"), endDate.ToString("yyyy-MM-dd"), refillCount, amount, info, physician);
                                            btnClear_Click(sender, e);
                                            Response.Write("<script>alert('Prescription added successfully');</script>");
                                        }
                                        catch
                                        {
                                            Response.Write("<script>alert('Error: Either prescription already exists, invalid patient or physician ids or SQL failure!');</script>");
                                            txtRxNumber.Focus();
                                        }
                                    }
                                    else
                                    {
                                        Response.Write("<script>alert('Error: Invalid Date Combination!');</script>");
                                        txtEndDate.Focus();
                                    }    
                                }
                                catch
                                {
                                    Response.Write("<script>alert('Error: Invalid End Date!');</script>");
                                    txtEndDate.Focus();
                                }
                            }
                            catch
                            {
                                Response.Write("<script>alert('Error: Invalid Start Date!');</script>");
                                txtStartDate.Focus();
                            }
                        }
                        else
                        {
                            Response.Write("<script>alert('Error: Cannot have negative or no refills!');</script>");
                            txtRefillCount.Focus();
                        }
                    }
                    catch
                    {
                        Response.Write("<script>alert('Error: Invalid Refill Count!');</script>");
                        txtRefillCount.Focus();
                    }
                }
                else
                {
                    Response.Write("<script>alert('Error: Cannot have Negative Amount!');</script>");
                    txtPrescriptionAmt.Focus();
                }
            }
            catch
            {
                Response.Write("<script>alert('Error: Invalid Amount!');</script>");
                txtPrescriptionAmt.Focus();
            }
            
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtRxNumber.Text = string.Empty;
            txtPatientId.Text = string.Empty;
            txtPhysicianId.Text = string.Empty;
            txtPrescriptionAmt.Text = string.Empty;
            txtRefillCount.Text = string.Empty;
            txtStartDate.Text = string.Empty;
            txtEndDate.Text = string.Empty;
            txtMedication.Text = string.Empty;
            txtDosage.Text = string.Empty;
            txtPrescritpionInfo.Text = string.Empty;
        }
    }
}