using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace WebDevFinalProject
{
    public partial class ModifyPrescription : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //add a page closing event

                Page.ClientScript.RegisterClientScriptInclude("Test", "MyScript.js");

                if (Request.QueryString["type"] != null && Request.QueryString["type"].Trim().ToUpper() == "EDIT") // display
                {
                    try
                    {
                        txtRxNumber.Text = DecryptID(Request.QueryString["ID"]);
                        btnSearch.Focus();
                    }
                    catch
                    {
                        Response.Write("<script>alert('Error: ID failure!');</script>");
                    }
                }
            }
        }

        private string DecryptID(string encrypted)
        {
            byte[] protectedData = HttpServerUtility.UrlTokenDecode(encrypted);
            byte[] data = System.Web.Security.MachineKey.Unprotect(protectedData, "PrescriptionID");
            return System.Text.Encoding.UTF8.GetString(data);
        }


        protected void btnUpdate_Click(object sender, EventArgs e)
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


                                    try
                                    {
                                        DataTier dt = new DataTier();
                                        string id = txtRxNumber.Text;
                                        string patient = txtPatientId.Text;
                                        string physician = txtPhysicianId.Text;
                                        string medication = txtMedication.Text;
                                        string dosage = txtDosage.Text;
                                        string info = txtPrescritpionInfo.Text;
                                        dt.UpdatePrescription(id, physician, patient, amount, startDate.ToString("yyyy-MM-dd"), endDate.ToString("yyyy-MM-dd"), refillCount, medication,dosage,info);
                                        btnClear_Click(sender, e);
                                        Response.Write("<script>alert('Prescription updated successfully');</script>");
                                    }
                                    catch
                                    {
                                        Response.Write("<script>alert('Error: Either prescription already exists, invalid patient or physician ids or SQL failure!');</script>");
                                        txtRxNumber.Focus();
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
            txtPrescriptionAmt.Text = string.Empty;
            txtStartDate.Text = string.Empty;
            txtEndDate.Text = string.Empty;
            txtRefillCount.Text = string.Empty;
            txtPatientId.Text = string.Empty;
            txtPhysicianId.Text = string.Empty;
            txtMedication.Text = string.Empty;
            txtDosage.Text = string.Empty;
            txtPrescritpionInfo.Text = string.Empty;
            btnSearch.Enabled = true;
            txtRxNumber.Enabled = true;
        }

        public void btnSearch_Click(object sender, EventArgs e)
        {

            string rx_number = txtRxNumber.Text;
            DataTier dt = new DataTier();

            try
            {
                DataSet ds = dt.searchPrescription(rx_number, "", "");

                txtRxNumber.Text = ds.Tables[0].Rows[0]["rx_number"].ToString();
                txtPrescriptionAmt.Text = ds.Tables[0].Rows[0]["presciption_amt"].ToString();
                txtStartDate.Text = ds.Tables[0].Rows[0]["prescription_start_date"].ToString();
                txtEndDate.Text = ds.Tables[0].Rows[0]["prescription_end_date"].ToString();
                txtRefillCount.Text = ds.Tables[0].Rows[0]["refill_allowed_count"].ToString();
                txtPatientId.Text = ds.Tables[0].Rows[0]["patient_id"].ToString();
                txtPhysicianId.Text = ds.Tables[0].Rows[0]["physician_id"].ToString();
                txtMedication.Text = ds.Tables[0].Rows[0]["medication_name"].ToString();
                txtDosage.Text = ds.Tables[0].Rows[0]["prescription_dosage"].ToString();
                txtPrescritpionInfo.Text = ds.Tables[0].Rows[0]["prescription_info"].ToString();
                btnSearch.Enabled = false; 
                txtRxNumber.Enabled = false;

            }
            catch
            {
                Response.Write("<script>alert('Error: Either prescription doesn't exist or SQL failure!');</script>");
                txtRxNumber.Focus();
            }

        }
    }
}