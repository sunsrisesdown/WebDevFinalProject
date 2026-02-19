using Database_Program;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDevFinalProject
{
    public partial class DisplayRefill : System.Web.UI.Page
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
                    GetRefill(Int32.Parse(Request.QueryString["ID"].Trim()));
                }
                else  //    anything else
                {
                    Response.Redirect("Home.aspx");
                }
            }
        }

        public void GetRefill(Int32 refillID)
        {
            //   the right record
            DataTier stuDT = new DataTier();
            DataSet ds = new DataSet();
            string gender;
            string myID = "";

            // string myCol = Crypt.DecryptString(studentid, "HelloWorld!");

            ds = stuDT.searchRefill(refillID,"");
            if (ds.Tables[0].Rows.Count > 0)
            {

                txtID.Text = ds.Tables[0].Rows[0]["refill_id"].ToString();
                txtRX.Text = ds.Tables[0].Rows[0]["rx_number"].ToString();
                txtDate.Text = ds.Tables[0].Rows[0]["date_filled"].ToString();
                // TODO complete other fields
                txtID.Enabled = false;
                txtRX.Enabled = false;
                txtDate.Enabled = false;
            }
        }
    }
}