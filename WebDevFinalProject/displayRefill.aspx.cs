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
    public partial class displayRefill : System.Web.UI.Page
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
                    try
                    {
                        GetRefill(Int32.Parse(Request.QueryString["ID"].Trim()));
                    }
                    catch
                    {
                        Response.Write("<script>alert('Error: SQL failure!');</script>");
                        btnClose_Click(sender, e);
                    }
                }
                else  //    anything else
                {
                    Response.Redirect("Home.aspx");
                }
            }
        }

        public void GetRefill(Int32 myID)
        {
            //   the right record
            DataTier DT = new DataTier();
            DataSet ds = new DataSet();
            string gender;

            // string myCol = Crypt.DecryptString(studentid, "HelloWorld!");

            ds = DT.searchRefill(myID,"");
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtID.Text = ds.Tables[0].Rows[0]["refill_id"].ToString();
                txtRX.Text = ds.Tables[0].Rows[0]["rx_number"].ToString();
                txtDate.Text = ds.Tables[0].Rows[0]["date_filled"].ToString();

                // TODO complete other fields
                txtRX.Enabled = false;
                txtID.Enabled = false;
                txtDate.Enabled = false;
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