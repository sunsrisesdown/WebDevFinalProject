using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDevFinalProject
{
    public partial class DisplayPrescription : System.Web.UI.Page
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
                    GetPrescription(Request.QueryString["ID"].Trim());
                }
                else  //    anything else
                {
                    Response.Redirect("Home.aspx");
                }
            }
        }

        public void GetPrescription(string rx_number)
        {
            //   the right record
            DataTier stuDT = new DataTier();
            DataSet ds = new DataSet();
            string gender;
            string myID = "";

            // string myCol = Crypt.DecryptString(studentid, "HelloWorld!");

            ds = stuDT.searchPrescription(rx_number, "","");
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtRX.Text = ds.Tables[0].Rows[0]["rx_number"].ToString();
                txtAMT.Text = ds.Tables[0].Rows[0]["presciption_amt"].ToString();
                txtSTART.Text = ds.Tables[0].Rows[0]["prescription_start_date"].ToString();
                txtEND.Text = ds.Tables[0].Rows[0]["prescription_end_date"].ToString();
                txtCOUNT.Text = ds.Tables[0].Rows[0]["refill_allowed_count"].ToString();
                txtPAT.Text = ds.Tables[0].Rows[0]["patient_id"].ToString();
                txtPHY.Text = ds.Tables[0].Rows[0]["physician_id"].ToString();
                txtNAME.Text = ds.Tables[0].Rows[0]["medication_name"].ToString();
                txtDOSAGE.Text = ds.Tables[0].Rows[0]["prescription_dosage"].ToString();
                txtINFO.Text = ds.Tables[0].Rows[0]["prescription_info"].ToString();
                // TODO complete other fields
                txtRX.Enabled = false;
                txtAMT.Enabled = false;
                txtSTART.Enabled = false;
                txtEND.Enabled = false;
                txtCOUNT.Enabled = false;
                txtPAT.Enabled = false;
                txtPHY.Enabled = false;
                txtNAME.Enabled = false;
                txtDOSAGE.Enabled = false;
                txtINFO.Enabled = false;
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