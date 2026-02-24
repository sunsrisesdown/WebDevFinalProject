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
    public partial class DisplayPhysician : System.Web.UI.Page
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
                    Response.Redirect("Default.aspx");
                }
                else if (Request.QueryString["type"].Trim().ToUpper() == "VIEW") // display
                {
                    try
                    {
                        GetPhysician(DecryptID(Request.QueryString["ID"]));
                    }
                    catch 
                    {
                        Response.Write("<script>alert('Error: SQL failure!');</script>");
                        btnClose_Click(sender, e);
                    }
                }
                else  //    anything else
                {
                    Response.Redirect("Default.aspx");
                }
            }
        }

        private string DecryptID(string encrypted)
        {
            byte[] protectedData = HttpServerUtility.UrlTokenDecode(encrypted);
            byte[] data = System.Web.Security.MachineKey.Unprotect(protectedData, "PhysicianID");
            return System.Text.Encoding.UTF8.GetString(data);
        }


        public void GetPhysician(string phyID)
        {
            //   the right record
            DataTier DT = new DataTier();
            DataSet ds = new DataSet();

            // string myCol = Crypt.DecryptString(studentid, "HelloWorld!");

            ds = DT.searchPhysician(phyID, "", "");
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtPHY.Text = ds.Tables[0].Rows[0]["physician_id"].ToString();
                txtFN.Text = ds.Tables[0].Rows[0]["fname"].ToString();
                txtLN.Text = ds.Tables[0].Rows[0]["lname"].ToString();
                txtMI.Text = ds.Tables[0].Rows[0]["midinit"].ToString();
                txtDOB.Text = ds.Tables[0].Rows[0]["dob"].ToString();
                txtGen.Text = ds.Tables[0].Rows[0]["gender"].ToString();
                txtDT.Text = ds.Tables[0].Rows[0]["hire_dt"].ToString();
                txtSAL.Text = ds.Tables[0].Rows[0]["salary"].ToString();
                txtSP1.Text = ds.Tables[0].Rows[0]["specialty_1"].ToString();
                txtSP2.Text = ds.Tables[0].Rows[0]["specialty_2"].ToString();
                txtSP3.Text = ds.Tables[0].Rows[0]["specialty_3"].ToString();
                txtWE.Text = ds.Tables[0].Rows[0]["work_email"].ToString();
                txtPE.Text = ds.Tables[0].Rows[0]["personal_email"].ToString();
                txtHP.Text = ds.Tables[0].Rows[0]["home_phone"].ToString();
                txtCellP.Text = ds.Tables[0].Rows[0]["cell_phone"].ToString();
                txtWP.Text = ds.Tables[0].Rows[0]["work_phone"].ToString();
                txtADD.Text = ds.Tables[0].Rows[0]["address_one"].ToString();
                txtCIT.Text = ds.Tables[0].Rows[0]["city"].ToString();
                txtSTA.Text = ds.Tables[0].Rows[0]["phy_state"].ToString();
                txtZIP.Text = ds.Tables[0].Rows[0]["zip"].ToString();
                // TODO complete other fields
                txtPHY.Enabled = false;
                txtFN.Enabled = false;
                txtLN.Enabled = false;
                txtMI.Enabled = false;
                txtDOB.Enabled = false;
                txtGen.Enabled = false;
                txtDT.Enabled = false;
                txtSAL.Enabled = false;
                txtSP1.Enabled = false;
                txtSP2.Enabled = false;
                txtSP3.Enabled = false;
                txtWE.Enabled = false;
                txtPE.Enabled = false;
                txtHP.Enabled = false;
                txtCellP.Enabled = false;
                txtWP.Enabled = false;
                txtADD.Enabled = false;
                txtCIT.Enabled = false;
                txtSTA.Enabled = false;
                txtZIP.Enabled = false;
            }
        }

        protected void btnClose_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
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