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
            if (!IsPostBack)
            {
                LoadStates();
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                DateTime dob1 = DateTime.Parse(txtDOB.Text);
                if (dob1 <= DateTime.Today)
                {
                    string dob = DateTime.Parse(txtDOB.Text).ToString();
                    try
                    {
                        decimal acctBal = decimal.Parse(txtAcct.Text.Trim());
                        if (acctBal >= 0)
                        {
                            string gender = cboGender.SelectedValue;
                            if (cboGender.SelectedIndex != 0)
                            {
                                string patientID = txtPatient.Text.Trim();
                                string fname = txtFirst.Text.Trim();
                                string midInit = txtMiddle.Text.Trim();
                                string lname = txtLast.Text.Trim();

                                string addressOne = txtStreet.Text.Trim();
                                string city = txtCity.Text.Trim();
                                string state = cboState.SelectedValue;
                                string zip = txtZip.Text.Trim();
                                string homePhone = txtHome.Text.Trim();
                                string workPhone = txtWorkP.Text.Trim();
                                string cellPhone = txtCell.Text.Trim();
                                string workEmail = txtWorkE.Text.Trim();
                                string personalEmail = txtPersE.Text.Trim();

                                try
                                {
                                    DataTier pdt = new DataTier();
                                    pdt.AddPatient(patientID, fname, midInit, lname, dob, gender,
                                                   acctBal, addressOne, city, state, zip,
                                                   homePhone, workPhone, cellPhone,
                                                   workEmail, personalEmail);
                                    Response.Write("<script>alert('New Patient Added Successfully');</script>");
                                    btnClear_Click(sender, e);
                                }
                                catch (Exception ex)
                                {
                                    Response.Write("<script>alert('Error: Either a patient with that id exist or SQL failure!');</script>");
                                    txtPatient.Focus();
                                }
                            }
                            else
                            {
                                Response.Write("<script>alert('Error: Select A Gender!');</script>");
                                cboGender.Focus();
                            }
                        }
                        else
                        {
                            Response.Write("<script>alert('Error: Invalid Account Balance!');</script>");
                            txtAcct.Focus();
                        }
                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('Error: Invalid Account Balance!');</script>");
                        txtAcct.Focus();
                    }
                }
                else
                {
                    Response.Write("<script>alert('Error: Invalid Date of Birth!');</script>");
                    txtDOB.Focus();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: Invalid Date!');</script>");
                txtDOB.Focus();
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
            cboState.SelectedIndex = 0;
            txtZip.Text = string.Empty;
            txtHome.Text = string.Empty;
            txtCell.Text = string.Empty;
            txtWorkP.Text = string.Empty;
            txtWorkE.Text = string.Empty;
            txtPersE.Text = string.Empty;
        }

        private void LoadStates()
        {
            cboState.Items.Clear();
            cboState.Items.Add(new ListItem("Select State", ""));

            cboState.Items.Add(new ListItem("Alabama (AL)", "AL"));
            cboState.Items.Add(new ListItem("Alaska (AK)", "AK"));
            cboState.Items.Add(new ListItem("American Samoa (AS)", "AS"));
            cboState.Items.Add(new ListItem("Arizona (AZ)", "AZ"));
            cboState.Items.Add(new ListItem("Arkansas (AR)", "AR"));
            cboState.Items.Add(new ListItem("California (CA)", "CA"));
            cboState.Items.Add(new ListItem("Colorado (CO)", "CO"));
            cboState.Items.Add(new ListItem("Connecticut (CT)", "CT"));
            cboState.Items.Add(new ListItem("Delaware (DE)", "DE"));
            cboState.Items.Add(new ListItem("District of Columbia (DC)", "DC"));
            cboState.Items.Add(new ListItem("Florida (FL)", "FL"));
            cboState.Items.Add(new ListItem("Georgia (GA)", "GA"));
            cboState.Items.Add(new ListItem("Guam (GU)", "GU"));
            cboState.Items.Add(new ListItem("Hawaii (HI)", "HI"));
            cboState.Items.Add(new ListItem("Idaho (ID)", "ID"));
            cboState.Items.Add(new ListItem("Illinois (IL)", "IL"));
            cboState.Items.Add(new ListItem("Indiana (IN)", "IN"));
            cboState.Items.Add(new ListItem("Iowa (IA)", "IA"));
            cboState.Items.Add(new ListItem("Kansas (KS)", "KS"));
            cboState.Items.Add(new ListItem("Kentucky (KY)", "KY"));
            cboState.Items.Add(new ListItem("Louisiana (LA)", "LA"));
            cboState.Items.Add(new ListItem("Maine (ME)", "ME"));
            cboState.Items.Add(new ListItem("Maryland (MD)", "MD"));
            cboState.Items.Add(new ListItem("Massachusetts (MA)", "MA"));
            cboState.Items.Add(new ListItem("Michigan (MI)", "MI"));
            cboState.Items.Add(new ListItem("Minnesota (MN)", "MN"));
            cboState.Items.Add(new ListItem("Mississippi (MS)", "MS"));
            cboState.Items.Add(new ListItem("Missouri (MO)", "MO"));
            cboState.Items.Add(new ListItem("Montana (MT)", "MT"));
            cboState.Items.Add(new ListItem("Nebraska (NE)", "NE"));
            cboState.Items.Add(new ListItem("Nevada (NV)", "NV"));
            cboState.Items.Add(new ListItem("New Hampshire (NH)", "NH"));
            cboState.Items.Add(new ListItem("New Jersey (NJ)", "NJ"));
            cboState.Items.Add(new ListItem("New Mexico (NM)", "NM"));
            cboState.Items.Add(new ListItem("New York (NY)", "NY"));
            cboState.Items.Add(new ListItem("North Carolina (NC)", "NC"));
            cboState.Items.Add(new ListItem("North Dakota (ND)", "ND"));
            cboState.Items.Add(new ListItem("Northern Mariana Islands (MP)", "MP"));
            cboState.Items.Add(new ListItem("Ohio (OH)", "OH"));
            cboState.Items.Add(new ListItem("Oklahoma (OK)", "OK"));
            cboState.Items.Add(new ListItem("Oregon (OR)", "OR"));
            cboState.Items.Add(new ListItem("Pennsylvania (PA)", "PA"));
            cboState.Items.Add(new ListItem("Puerto Rico (PR)", "PR"));
            cboState.Items.Add(new ListItem("Rhode Island (RI)", "RI"));
            cboState.Items.Add(new ListItem("South Carolina (SC)", "SC"));
            cboState.Items.Add(new ListItem("South Dakota (SD)", "SD"));
            cboState.Items.Add(new ListItem("Tennessee (TN)", "TN"));
            cboState.Items.Add(new ListItem("Texas (TX)", "TX"));
            cboState.Items.Add(new ListItem("Utah (UT)", "UT"));
            cboState.Items.Add(new ListItem("Vermont (VT)", "VT"));
            cboState.Items.Add(new ListItem("Virginia (VA)", "VA"));
            cboState.Items.Add(new ListItem("Virgin Islands (VI)", "VI"));
            cboState.Items.Add(new ListItem("Washington (WA)", "WA"));
            cboState.Items.Add(new ListItem("West Virginia (WV)", "WV"));
            cboState.Items.Add(new ListItem("Wisconsin (WI)", "WI"));
            cboState.Items.Add(new ListItem("Wyoming (WY)", "WY"));
        }

    }
}