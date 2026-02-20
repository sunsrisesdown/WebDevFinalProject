using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDevFinalProject
{
    public partial class DisplayPatient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //add a page closing event

                Page.ClientScript.RegisterClientScriptInclude("Test", "MyScript.js");

                //retrieve the querystring
                if (String.IsNullOrEmpty(Request.QueryString["ID"]))
                {
                    //not the right entry point
                    Response.Redirect("Home.aspx");
                }
                else if (Request.QueryString["type"].Trim().ToUpper() == "VIEW") // display
                {
                    GetPhysician(Request.QueryString["ID"].Trim());
                }
                else  //    anything else
                {
                    Response.Redirect("Home.aspx");
                }
            }
        }

        public void GetPhysician(string patID)
        {
            //   the right record
            DataTier DT = new DataTier();
            DataSet ds = new DataSet();

            // string myCol = Crypt.DecryptString(studentid, "HelloWorld!");

            ds = DT.searchPatient(patID, "", "");
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtID.Text = ds.Tables[0].Rows[0]["patient_id"].ToString();
                txtFN.Text = ds.Tables[0].Rows[0]["fname"].ToString();
                txtLN.Text = ds.Tables[0].Rows[0]["lname"].ToString();
                txtMI.Text = ds.Tables[0].Rows[0]["midinit"].ToString();
                txtDOB.Text = ds.Tables[0].Rows[0]["dob"].ToString();
                txtGEN.Text = ds.Tables[0].Rows[0]["gender"].ToString();
                txtACC.Text = ds.Tables[0].Rows[0]["acct_bal"].ToString();
                txtWE.Text = ds.Tables[0].Rows[0]["work_email"].ToString();
                txtPE.Text = ds.Tables[0].Rows[0]["personal_email"].ToString();
                txtHP.Text = ds.Tables[0].Rows[0]["home_phone"].ToString();
                txtCellP.Text = ds.Tables[0].Rows[0]["cell_phone"].ToString();
                txtWP.Text = ds.Tables[0].Rows[0]["work_phone"].ToString();
                txtADD.Text = ds.Tables[0].Rows[0]["address_one"].ToString();
                txtCIT.Text = ds.Tables[0].Rows[0]["city"].ToString();
                txtSTA.Text = ds.Tables[0].Rows[0]["pat_state"].ToString();
                txtZIPa.Text = ds.Tables[0].Rows[0]["zip"].ToString();
                // TODO complete other fields
                txtID.Enabled = false;
                txtFN.Enabled = false;
                txtLN.Enabled = false;
                txtMI.Enabled = false;
                txtDOB.Enabled = false;
                txtGEN.Enabled = false;
                txtACC.Enabled = false;
                txtPE.Enabled = false;
                txtHP.Enabled = false;
                txtCellP.Enabled = false;
                txtWE.Enabled = false;
                txtWP.Enabled = false;
                txtADD.Enabled = false;
                txtCIT.Enabled = false;
                txtSTA.Enabled = false;
                txtZIPa.Enabled = false;
            }
        }

        protected void btnClose_Click(object sender, EventArgs e)
        {
            System.Text.StringBuilder cb = new System.Text.StringBuilder();
            // cb.Append(" opener.location.href = 'home.aspx';");
            cb.Append("var ie7 = (document.all && !window.opera && window.XMLHttpRequest) ? true : false;");
            cb.Append(" if (ie7)");
            cb.Append(" { ");
            cb.Append("window.open('','_parent','');");
            cb.Append("window.close();");
            cb.Append(" }");
            cb.Append(" else ");
            cb.Append(" { ");

            cb.Append(" window.open('', '_self', '');;");
            cb.Append(" window.close();;");
            cb.Append(" }");
            ClientScript.RegisterClientScriptBlock(this.GetType(), "CloseReloadScript", cb.ToString(), true);
        }
    }
}