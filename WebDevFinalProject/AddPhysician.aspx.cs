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

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                // Get values
                string physicianID = txtPhysicianID.Text.Trim();
                string firstName = txtFirst.Text.Trim();
                string middleInitial = txtMiddle.Text.Trim();
                string lastName = txtLast.Text.Trim();
                string gender = cboGender.SelectedValue.Trim();
                string street = txtStreet.Text.Trim();
                string city = txtCity.Text.Trim();
                string state = txtState.Text.Trim();
                string zip = txtZip.Text.Trim();
                string specialty1 = txtSpec1.Text.Trim();
                string specialty2 = txtSpec2.Text.Trim();
                string specialty3 = txtSpec3.Text.Trim();
                string dateHired = txtDateHired.Text.Trim();
                decimal salary;
                string workEmail = TxtWorkemail.Text;
                string homePhone = TxtHomePhone.Text;
                string cellPhone = TxtCellPhone.Text;
                string workPhone = TxtWorkPhone.Text;
                string personal = "";
                string dob = null;

                // Validate salary
                if (!decimal.TryParse(txtSalary.Text.Trim(), out salary))
                {
                    Response.Write("<script>alert('Salary must be a valid number.');</script>");
                    return;
                }

                if (salary < 0)
                {
                    Response.Write("<script>alert('Salary cannot be negative.');</script>");
                    return;
                }

                // Validate date hired
                DateTime hiredDate;
                if (!DateTime.TryParse(dateHired, out hiredDate))
                {
                    Response.Write("<script>alert('Invalid Date Hired.');</script>");
                    return;
                }

                if (hiredDate > DateTime.Today)
                {
                    Response.Write("<script>alert('Date Hired cannot be in the future.');</script>");
                    return;
                }

                // Call your DataTier class
                DataTier pdt = new DataTier();

                pdt.AddPhysician(
                    physicianID,
                    firstName,
                    middleInitial,
                    lastName,
                    dob,
                    gender,
                    (hiredDate.ToString("yyyy-MM-dd")),
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

                // Success message
                Response.Write("<script>alert('Physician Added Successfully');</script>");
            }
            catch (Exception ex)
            {

            }
        }
    }
}