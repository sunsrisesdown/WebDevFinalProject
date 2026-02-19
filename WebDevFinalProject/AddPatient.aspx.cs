using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDevFinalProject
{
    public partial class AddPatient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                string patientID = txtPatient.Text.Trim();
                string fname = txtFirst.Text.Trim();
                string midInit = txtMiddle.Text.Trim();
                string lname = txtLast.Text.Trim();
                string dob = txtDOB.Text;
                string gender = cboGender.SelectedValue;
                decimal acctBal = 0;

                decimal.TryParse(txtAcct.Text, out acctBal);

                string addressOne = txtStreet.Text.Trim();
                string city = txtCity.Text.Trim();
                string state = txtState.Text.Trim();
                string zip = txtZip.Text.Trim();
                string homePhone = txtHome.Text.Trim();
                string workPhone = txtWorkP.Text.Trim();
                string cellPhone = txtCell.Text.Trim();
                string workEmail = txtWorkE.Text.Trim();
                string personalEmail = txtPersE.Text.Trim();

                DataTier pdt = new DataTier();
                pdt.AddPatient(patientID, fname, midInit, lname, dob, gender,
                               acctBal, addressOne, city, state, zip,
                               homePhone, workPhone, cellPhone,
                               workEmail, personalEmail);

                Response.Write("<script>alert('New Patient Added Successfully');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtPatient.Text = string.Empty;
            txtFirst.Text = string.Empty;
            txtMiddle.Text = string.Empty;
            txtLast.Text = string.Empty;
            txtDOB.Text = string.Empty;
            cboGender.SelectedIndex = 0;
            txtAcct.Text = string.Empty;
            txtStreet.Text = string.Empty;
            txtCity.Text = string.Empty;
            txtState.Text = string.Empty;
            txtZip.Text = string.Empty;
            txtHome.Text = string.Empty;
            txtCell.Text = string.Empty;
            txtWorkP.Text = string.Empty;
            txtWorkE.Text = string.Empty;
            txtPersE.Text = string.Empty;
        }
    }
}