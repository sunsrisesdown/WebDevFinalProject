using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDevFinalProject
{
    public partial class ViewPhysician : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterClientScriptInclude("Text", "MyScript.js");

            grdPhysician.RowDataBound += new GridViewRowEventHandler(grdPhysician_RowDataBound);

            if (!IsPostBack)
            {
                //get data
                Cache.Remove("Physician_Data");
                //bindData();
                if (Convert.ToString(Session["GRIDREFRESH"]) != "")
                {
                    Cache.Remove("Physician_Data");
                    BindData();
                }
            }
            else
            {
                //check if refresh
                if (Cache["Physician_Data"] != null)
                {
                    //BindData();
                }
                //do nothing
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            btnSearch.Enabled = false;
            try
            {
                if ((txtPhysicianID.Text.Trim() != "") || (txtFName.Text.Trim() != "") || (txtLName.Text.Trim() != ""))
                {
                    try
                    {
                        Session["vPhysicianID"] = txtPhysicianID.Text.Trim();
                        Session["vFName"] = txtFName.Text.Trim();
                        Session["vLName"] = txtLName.Text.Trim();

                        Cache.Remove("Physician_Data");
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

            string myID = Convert.ToString(Session["vPhysicianID"]);
            string myFN = Convert.ToString(Session["vFName"]);
            string myLN = Convert.ToString(Session["vLName"]);

            txtPhysicianID.Text = myID.ToString().Trim();
            txtFName.Text = myFN.ToString().Trim();
            txtLName.Text = myLN.ToString().Trim();

            if ((myID.Length > 0) || (myFN.Length > 0) || (myLN.Length > 0))
            {
                DataSet aDataSet = new DataSet();
                aDataSet = aDataTier.searchPhysician(myID, myFN, myLN);
                grdPhysician.DataSource = aDataSet.Tables[0];

                if (Cache["Physician_Data"] == null)
                {
                    Cache.Add("Physician_Data", new DataView(aDataSet.Tables[0]), null, System.Web.Caching.Cache.NoAbsoluteExpiration, System.TimeSpan.FromMinutes(10), System.Web.Caching.CacheItemPriority.Default, null);
                    grdPhysician.DataBind();
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
            aDataSet = aDataTier.getAllPhysicianStandard();
            grdPhysician.DataSource = aDataSet.Tables[0];
            Cache.Add("Physician_Data", new DataView(aDataSet.Tables[0]), null, System.Web.Caching.Cache.NoAbsoluteExpiration, System.TimeSpan.FromMinutes(10), System.Web.Caching.CacheItemPriority.Default, null);
            grdPhysician.DataBind();
        }

        protected void grdPhysician_Sorting(object sender, GridViewSortEventArgs e)
        {
            SortRecords(e.SortExpression);
        }

        private void SortRecords(string sortExpress)
        {
            string oldExpression = grdPhysician.SortExpression;
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
            source = (DataView)Cache["Physician_Data"];      // use the cache

            source.Sort = (" " + sortExpression + " " + this.sortDir);

            ViewState["oldSortExpression"] = sortExpress;    // save the sort as old sort
            Session["SortedView"] = source;
            grdPhysician.DataSource = source;
            grdPhysician.DataBind();
        }

        protected void grdPhysician_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            Int32 pageNum = 0;
            pageNum = e.NewPageIndex;
            Paging(pageNum);
        }

        private void Paging(Int32 page)
        {
            grdPhysician.PageIndex = page;
            BindData();
        }

        public string sortDir
        {
            get => (string)ViewState["sortDir"];
            set => ViewState["sortDir"] = value;
        }

        protected void grdPhysician_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void grdPhysician_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                ((CheckBox)e.Row.FindControl("cbSelectAll")).Attributes.Add("onclick", "javascript:Select('" + ((CheckBox)e.Row.FindControl("cbSelectAll")).ClientID + "')");
            }
        }

        protected void Delete_Click(object sender, CommandEventArgs e)
        {
            try
            {
                try
                {
                    Session["DELETE"] = "TRUE";   // delete causes page rebind clear afterwards

                    Session["vPhysicianID"] = txtPhysicianID.Text.Trim();
                    Session["vFName"] = txtFName.Text.Trim();
                    Session["vLName"] = txtLName.Text.Trim();
                    CheckBox chk = new CheckBox();
                    Label lbl = new Label();
                    string studid = "";
                    DataTier std = new DataTier();
                    if (grdPhysician.Rows.Count > 0)  // only do it if there is a row
                    {
                        //For Each item As GridView In grdCustomer.items
                        foreach (GridViewRow row in grdPhysician.Rows)
                        {
                            //get the selected checkbox
                            chk = (CheckBox)row.FindControl("chkPhysicianID");
                            if (chk.Checked)
                            {
                                lbl = (Label)row.Controls[0].FindControl("hidPhysicianID");
                                studid = lbl.Text.Trim();
                                //delete the record one at a time
                                std.DeletePhysician(studid);
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
    }
}