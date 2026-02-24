using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace WebDevFinalProject
{
    public partial class ViewPrescription : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterClientScriptInclude("Text", "MyScript.js");

            grdPrescription.RowDataBound += new GridViewRowEventHandler(grdPrescription_RowDataBound);

            if (!IsPostBack)
            {
                //get data
                Cache.Remove("Prescription_Data");
                //bindData();
                if (Convert.ToString(Session["GRIDREFRESH"]) != "")
                {
                    Cache.Remove("Prescription_Data");
                    BindData();
                }
            }
            else
            {
                //check if refresh
                if (Cache["Prescription_Data"] != null)
                {
                    //BindData();
                }
                //do nothing
            }
        }

        private string EncryptID(string plainID)
        {
            byte[] data = System.Text.Encoding.UTF8.GetBytes(plainID);
            byte[] protectedData = System.Web.Security.MachineKey.Protect(data, "PrescriptionID");
            return HttpServerUtility.UrlTokenEncode(protectedData);
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            btnSearch.Enabled = false;
            try
            {
                if ((txtPrescription_ID.Text.Trim() != "") || (txtPATID.Text.Trim() != "") || (txtPHYID.Text.Trim() != ""))
                {
                    try
                    {
                        Session["vRX_Number"] = txtPrescription_ID.Text.Trim();
                        Session["vPHYID"] = txtPHYID.Text.Trim();
                        Session["vPATID"] = txtPATID.Text.Trim();

                        Cache.Remove("Prescription_Data");
                        BindDataSearch();
                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('Error: SQL Search failure!');</script>");
                    }
                }
                else
                {
                    BindData();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: SQL failure!');</script>");
            }
            btnSearch.Enabled = true;
        }

        private void BindDataSearch()
        {
            DataTier aDataTier = new DataTier();

            string myRX = Convert.ToString(Session["vRX_Number"]);
            string myPHYID = Convert.ToString(Session["vPHYID"]);
            string myPATID = Convert.ToString(Session["vPATID"]);

            txtPrescription_ID.Text = myRX.ToString().Trim();
            txtPHYID.Text = myPHYID.ToString().Trim();
            txtPATID.Text = myPATID.ToString().Trim();

            if ((myRX.Length > 0) || (myPHYID.Length > 0) || (myPATID.Length > 0))
            {
                DataSet aDataSet = new DataSet();
                aDataSet = aDataTier.searchPrescription(myRX, myPATID, myPHYID);
                grdPrescription.DataSource = aDataSet.Tables[0];

                if (Cache["Prescription_Data"] == null)
                {
                    Cache.Add("Prescription_Data", new DataView(aDataSet.Tables[0]), null, System.Web.Caching.Cache.NoAbsoluteExpiration, System.TimeSpan.FromMinutes(10), System.Web.Caching.CacheItemPriority.Default, null);
                    grdPrescription.DataBind();
                }
            }
            else
            {
                BindData();
            }
        }


        private void BindData()
        {
            DataTier aDataTier = new DataTier();
            DataSet aDataSet = new DataSet();
            aDataSet = aDataTier.getAllPrescriptionStandard();
            grdPrescription.DataSource = aDataSet.Tables[0];
            Cache.Add("Prescription_Data", new DataView(aDataSet.Tables[0]), null, System.Web.Caching.Cache.NoAbsoluteExpiration, System.TimeSpan.FromMinutes(10), System.Web.Caching.CacheItemPriority.Default, null);
            grdPrescription.DataBind();
        }

        protected void grdPrescription_Sorting(object sender, GridViewSortEventArgs e)
        {
            SortRecords(e.SortExpression);
        }

        private void SortRecords(string sortExpress)
        {
            string oldExpression = grdPrescription.SortExpression;
            String newExpression = sortExpress;
            String lastValue, theSortField;
            String sortExpression;
            DataView source;
            String theDirection;

            string oldSortExp, newSortExp;


            string wildChar;
            theDirection = " ";
            wildChar = " %";

            lastValue = (string)ViewState["sortValue"];
            sortExpression = sortExpress;

            oldSortExp = (string)ViewState["oldSortExpression"];

            //get the last sort field and the new sort field
            if (oldSortExp == sortExpression)   //check for new expression, that is DB field
            {
                if (this.sortDir == "desc")
                {
                    this.sortDir = "asc";
                }
                else if (this.sortDir == null)
                {
                    this.sortDir = "asc";
                }
                else if (this.sortDir == "asc")
                {
                    this.sortDir = "desc";
                }
                else       //sort in ascending order the first time, column may not change if already sorted that way
                {
                    this.sortDir = "asc";
                }
            }

            theSortField = (string)ViewState["sortField"];
            source = (DataView)Cache["Prescription_Data"];      // use the cache

            source.Sort = (" " + sortExpression + " " + this.sortDir);

            ViewState["oldSortExpression"] = sortExpress;    // save the sort as old sort
            Session["SortedView"] = source;
            grdPrescription.DataSource = source;
            grdPrescription.DataBind();
        }

        protected void grdPrescription_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            Int32 pageNum = 0;
            pageNum = e.NewPageIndex;
            Paging(pageNum);
        }

        private void Paging(Int32 page)
        {
            grdPrescription.PageIndex = page;
            BindData();
        }

        public string sortDir
        {
            get => (string)ViewState["sortDir"];
            set => ViewState["sortDir"] = value;
        }

        protected void grdPrescription_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void grdPrescription_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                ((CheckBox)e.Row.FindControl("cbSelectAll")).Attributes.Add("onclick", "javascript:Select('" + ((CheckBox)e.Row.FindControl("cbSelectAll")).ClientID + "')");
            }

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Label hid = (Label)e.Row.FindControl("hidRX");
                HyperLink lnk = (HyperLink)e.Row.FindControl("lnkView");

                if (hid != null && lnk != null)
                {
                    string encrypted = EncryptID(hid.Text.Trim());
                    lnk.NavigateUrl = "~/DisplayPrescription.aspx?ID=" + encrypted + "&type=view";
                }
            }

        }

        protected void Delete_Click(object sender, CommandEventArgs e)
        {
            try
            {
                try
                {
                    Session["DELETE"] = "TRUE";   // delete causes page rebind clear afterwards

                    Session["vRX_Number"] = txtPrescription_ID.Text.Trim();
                    Session["vPHYID"] = txtPHYID.Text.Trim();
                    Session["vPATID"] = txtPATID.Text.Trim();
                    CheckBox chk = new CheckBox();
                    Label lbl = new Label();
                    string studid = "";
                    DataTier std = new DataTier();
                    if (grdPrescription.Rows.Count > 0)  // only do it if there is a row
                    {
                        //For Each item As GridView In grdCustomer.items
                        foreach (GridViewRow row in grdPrescription.Rows)
                        {
                            //get the selected checkbox
                            chk = (CheckBox)row.FindControl("chkRX_Number");
                            if (chk.Checked)
                            {
                                lbl = (Label)row.Controls[0].FindControl("hidRX_Number");
                                studid = lbl.Text.Trim();
                                //delete the record one at a time
                                std.DeletePrescription(studid);
                            }
                        }
                        //refresh datagrid
                        BindData();
                    }
                }
                catch (Exception ex)
                {
                    throw new Exception(ex.Message, ex.InnerException);
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message, ex.InnerException);
            }
        }


        protected void lbtnEdit_Click(object sender, CommandEventArgs e)
        { 
            Response.Redirect("ModifyPrescription.aspx");
        }
    }
}