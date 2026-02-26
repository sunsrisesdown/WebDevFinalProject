using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDevFinalProject
{
    public partial class ViewRefill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterClientScriptInclude("Text", "MyScript.js");

            grdRefills.RowDataBound += new GridViewRowEventHandler(grdRefills_RowDataBound);

            if (!IsPostBack)
            {
                //get data
                Cache.Remove("Refill_Data");
                //bindData();
                if (Convert.ToString(Session["GRIDREFRESH"]) != "")
                {
                    Cache.Remove("Refill_Data");
                    BindData();
                }
            }
            else
            {
                //check if refresh
                if (Cache["Refill_Data"] != null)
                {
                    //BindData();
                }
                //do nothing
            }
        }

        private string EncryptID(string plainID)
        {
            byte[] data = System.Text.Encoding.UTF8.GetBytes(plainID);
            byte[] protectedData = System.Web.Security.MachineKey.Protect(data, "RefillID");
            return HttpServerUtility.UrlTokenEncode(protectedData);
        }


        protected void grdRefills_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            Int32 pageNum = 0;
            pageNum = e.NewPageIndex;
            Paging(pageNum);
        }

        protected void grdRefills_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void grdRefills_Sorting(object sender, GridViewSortEventArgs e)
        {
            SortRecords(e.SortExpression);
        }

        private void SortRecords(string sortExpress)
        {
            string oldExpression = grdRefills.SortExpression;
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
            source = (DataView)Cache["Refill_Data"];      // use the cache

            source.Sort = (" " + sortExpression + " " + this.sortDir);

            ViewState["oldSortExpression"] = sortExpress;    // save the sort as old sort
            Session["SortedView"] = source;
            grdRefills.DataSource = source;
            grdRefills.DataBind();
        }

        private void Paging(Int32 page)
        {
            grdRefills.PageIndex = page;
            BindData();
        }

        public string sortDir
        {
            get => (string)ViewState["sortDir"];
            set => ViewState["sortDir"] = value;
        }


        protected void grdRefills_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            Label hid = (Label)e.Row.FindControl("hidRefillID");
            HyperLink lnk = (HyperLink)e.Row.FindControl("lnkView");
            LinkButton edit = (LinkButton)e.Row.FindControl("lbtnEdit");

            if (e.Row.RowType == DataControlRowType.Header)
            {
                ((CheckBox)e.Row.FindControl("cbSelectAll")).Attributes.Add("onclick", "javascript:Select('" + ((CheckBox)e.Row.FindControl("cbSelectAll")).ClientID + "')");
            }

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (hid != null && lnk != null)
                {
                    string encrypted = EncryptID(hid.Text.Trim());
                    lnk.NavigateUrl = "~/DisplayRefill.aspx?ID=" + encrypted + "&type=view&page=" + grdRefills.PageIndex;
                }
            }
            
            if (edit != null && hid != null)
            {
                string encryptedEdit = EncryptID(hid.Text.Trim());
                edit.CommandArgument = encryptedEdit;
            }
        }

        protected void Delete_Click(object sender, CommandEventArgs e)
        {
            try
            {
                try
                {
                    Session["DELETE"] = "TRUE";   // delete causes page rebind clear afterwards

                    Session["vRefill_ID"] = txtrefill_ID.Text.Trim();
                    Session["vRX_Number"] = txtRX_Number.Text.Trim();
                    CheckBox chk = new CheckBox();
                    Label lbl = new Label();
                    Int32 refill_id = 0;
                    DataTier dt = new DataTier();
                    if (grdRefills.Rows.Count > 0)  // only do it if there is a row
                    {
                        //For Each item As GridView In grdCustomer.items
                        foreach (GridViewRow row in grdRefills.Rows)
                        {
                            //get the selected checkbox
                            chk = (CheckBox)row.FindControl("chkRefill_ID");
                            if (chk.Checked)
                            {
                                lbl = (Label)row.Controls[0].FindControl("hidRefill_ID");
                                refill_id = Int32.Parse(lbl.Text.Trim());
                                //delete the record one at a time
                                dt.DeleteRefill(refill_id);
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
            string encryptedID = e.CommandArgument.ToString();
            Response.Redirect("ModifyRefill.aspx?ID=" + encryptedID + "&type=edit");
        }


        protected void btnSearch_Click(object sender, EventArgs e)
        {
            btnSearch.Enabled = false;
            try
            {
                if ((txtrefill_ID.Text.Trim() != "") || (txtRX_Number.Text.Trim() != ""))
                {
                    try
                    {
                        Session["vRefill_ID"] = txtrefill_ID.Text;
                        Session["vRx_numbers"] = txtRX_Number.Text;

                        Cache.Remove("Refill_Data");
                        BindDataSearch();
                    }
                    catch (Exception ex)
                    {

                    }
                }
                else
                {
                    BindData();
                }
            } 
            catch ( Exception ex )
            {

            }
            btnSearch.Enabled = true;
        }

        private void BindDataSearch()
        {
            DataTier aDataTier = new DataTier();

            try
            {
                Int32 myID = Int32.Parse(Convert.ToString(Session["vRefill_ID"]));
                string myRX = Convert.ToString(Session["vRx_numbers"]);

                txtrefill_ID.Text = myID.ToString().Trim();
                txtRX_Number.Text = myRX;

                DataSet aDataSet = new DataSet();
                
                if (myRX.Length > 0)
                {
                    aDataSet = aDataTier.searchRefill(myID, myRX);
                    grdRefills.DataSource = aDataSet.Tables[0];
                    if (Cache["Refill_Data"] == null)
                    {
                        Cache.Add("Refill_Data", new DataView(aDataSet.Tables[0]), null, System.Web.Caching.Cache.NoAbsoluteExpiration, System.TimeSpan.FromMinutes(10), System.Web.Caching.CacheItemPriority.Default, null);
                        grdRefills.DataBind();
                    }
                }
                else
                {
                    aDataSet = aDataTier.searchRefill(myID);
                    grdRefills.DataSource = aDataSet.Tables[0];
                    if (Cache["Refill_Data"] == null)
                    {
                        Cache.Add("Refill_Data", new DataView(aDataSet.Tables[0]), null, System.Web.Caching.Cache.NoAbsoluteExpiration, System.TimeSpan.FromMinutes(10), System.Web.Caching.CacheItemPriority.Default, null);
                        grdRefills.DataBind();
                    }
                }
            }
            catch
            {
                string myRX = Convert.ToString(Session["vRx_numbers"]);
                if (myRX.Length > 0)
                {
                    DataSet aDataSet = new DataSet();
                    aDataSet = aDataTier.searchRefillRX(myRX);
                    grdRefills.DataSource = aDataSet.Tables[0];

                    if (Cache["Refill_Data"] == null)
                    {
                        Cache.Add("Refill_Data", new DataView(aDataSet.Tables[0]), null, System.Web.Caching.Cache.NoAbsoluteExpiration, System.TimeSpan.FromMinutes(10), System.Web.Caching.CacheItemPriority.Default, null);
                        grdRefills.DataBind();
                    }
                }
            }
        }

        private void BindData()
        {
            DataTier aDataTier = new DataTier();
            DataSet aDataSet = new DataSet();
            aDataSet = aDataTier.getAllRefillsStandard();
            grdRefills.DataSource = aDataSet.Tables[0];
            Cache.Add("Refill_Data", new DataView(aDataSet.Tables[0]), null, System.Web.Caching.Cache.NoAbsoluteExpiration, System.TimeSpan.FromMinutes(10), System.Web.Caching.CacheItemPriority.Default, null);
            grdRefills.DataBind();
        }
    }
}