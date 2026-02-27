using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDevFinalProject
{
    public partial class AddPhysician : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadStates();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                DateTime dob1 = DateTime.Parse(txtDOB.Text.Trim());
                if (dob1 < DateTime.Today)
                {
                    {
                        string gender = cboGender.SelectedValue.Trim();
                        if (cboGender.SelectedIndex != 0)
                        {

                            try
                            {
                                DateTime hiredDate = DateTime.Parse(txtDateHired.Text.Trim());
                                if (hiredDate <= DateTime.Today)
                                {
                                            try
                                            {
                                                decimal salary = decimal.Parse(txtSalary.Text);
                                                if (salary > 0)
                                                {
                                                    // Get values
                                                    string physicianID = txtPhysicianID.Text.Trim();
                                                    string firstName = txtFirst.Text.Trim();
                                                    string middleInitial = txtMiddle.Text.Trim();
                                                    string lastName = txtLast.Text.Trim();
                                                    string street = txtStreet.Text.Trim();
                                                    string state = cboState.SelectedIndex.ToString();
                                                    string city = txtCity.Text.Trim();
                                                    string zip = txtZip.Text.Trim();
                                                    string specialty1 = txtSpec1.Text.Trim();
                                                    string specialty2 = txtSpec2.Text.Trim();
                                                    string specialty3 = txtSpec3.Text.Trim();
                                                    string workEmail = TxtWorkemail.Text;
                                                    string homePhone = TxtHomePhone.Text;
                                                    string cellPhone = TxtCellPhone.Text;
                                                    string workPhone = TxtWorkPhone.Text;
                                                    string personal = txtPersonal.Text;


                                                    // Call your DataTier class
                                                    DataTier pdt = new DataTier();
                                                    try
                                                    {
                                                        pdt.AddPhysician(
                                                        physicianID,
                                                        firstName,
                                                        middleInitial,
                                                        lastName,
                                                        dob1.ToString("yyyy-MM-dd"),
                                                        gender,
                                                        hiredDate.ToString("yyyy-MM-dd"),
                                                        salary,
                                                        specialty1,
                                                        specialty2,
                                                        specialty3,
                                                        street,
                                                        city,
                                                        state,
                                                        zip,
                                                        homePhone,
                                                        workPhone,
                                                        cellPhone,
                                                        workEmail,
                                                        personal
                                                    );
                                                    
                                                    Response.Write("<script>alert('Physician Added Successfully');</script>");
                                                    btnClear_Click(sender, e);

                                                    }
                                                    catch
                                                    {
                                                        Response.Write("<script>alert('Error: Either a physician with that id exist or SQL failure!');</script>");
                                                        btnAdd.Focus();
                                                    }
                                                }
                                                else
                                                {
                                                    Response.Write("<script>alert('Error: Cannot have negatives for salary!');</script>");
                                                    txtSalary.Focus();
                                                }
                                       
                                        }
                                        catch
                                        {
                                            Response.Write("<script>alert('Error: Invalid Salary!');</script>");
                                            txtSalary.Focus();
                                        }
                                }
                                else
                                {
                                    Response.Write("<script>alert('Error: Invalid Date Hired!');</script>");
                                    txtDateHired.Focus();
                                }
                            }
                            catch
                            {
                                Response.Write("<script>alert('Error: Invalid Date Hired!');</script>");
                                txtDateHired.Focus();
                            }
                        }
                        else
                        {
                            Response.Write("<script>alert('Error: Select A Gender!');</script>");
                            cboGender.Focus();
                        }
                    }
                }
                else
                {
                    Response.Write("<script>alert('Error: Invalid Date of Birth!');</script>");
                    txtDOB.Focus();
                }
            }
            catch
            {
                Response.Write("<script>alert('Error: Invalid Date of Birth!');</script>");
                txtDOB.Focus();
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtPhysicianID.Text = string.Empty;
            txtFirst.Text = string.Empty;
            txtMiddle.Text = string.Empty;
            txtLast.Text = string.Empty;
            TxtHomePhone.Text = string.Empty;
            txtStreet.Text = string.Empty;
            txtCity.Text = string.Empty;
            cboState.SelectedIndex = 0;
            txtZip.Text = string.Empty;
            txtSpec1.Text = string.Empty;
            txtSpec2.Text = string.Empty;
            txtSpec3.Text = string.Empty;
            txtDateHired.Text = string.Empty;
            txtSalary.Text = string.Empty;
            txtPersonal.Text = string.Empty;
            TxtWorkPhone.Text = string.Empty;
            TxtWorkemail.Text = string.Empty;
            TxtCellPhone.Text = string.Empty;
            cboGender.SelectedIndex = 0;
            txtDOB.Text = string.Empty;
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