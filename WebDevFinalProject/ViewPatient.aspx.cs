using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDevFinalProject.pages
{
    public partial class ViewPatient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterClientScriptInclude("Text", "MyScript.js");

            grdPatient.RowDataBound += new GridViewRowEventHandler(grdPatient_RowDataBound);

            if (!IsPostBack)
            {
                //get data
                Cache.Remove("Patient_Data");
                //bindData();
                if (Convert.ToString(Session["GRIDREFRESH"]) != "")
                {
                    Cache.Remove("Patient_Data");
                    BindData();
                }
            }
            else
            {
                //check if refresh
                if (Cache["Patient_Data"] != null)
                {
                    //BindData();
                }
                //do nothing
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            BindData();
        }

        private void BindData()
        {
            DataTier aDataTier = new DataTier();
            DataSet aDataSet = new DataSet();
            aDataSet = aDataTier.getAllPatientsStandard();
            grdPatient.DataSource = aDataSet.Tables[0];
            Cache.Add("Patient_Data", new DataView(aDataSet.Tables[0]), null, System.Web.Caching.Cache.NoAbsoluteExpiration, System.TimeSpan.FromMinutes(10), System.Web.Caching.CacheItemPriority.Default, null);
            grdPatient.DataBind();
        }

        protected void grdPatient_Sorting(object sender, GridViewSortEventArgs e)
        {
            SortRecords(e.SortExpression);
        }

        private void SortRecords(string sortExpress)
        {
            string oldExpression = grdPatient.SortExpression;
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
            source = (DataView)Cache["Patient_Data"];      // use the cache

            source.Sort = (" " + sortExpression + " " + this.sortDir);

            ViewState["oldSortExpression"] = sortExpress;    // save the sort as old sort
            Session["SortedView"] = source;
            grdPatient.DataSource = source;
            grdPatient.DataBind();
        }

        protected void grdPatient_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            Int32 pageNum = 0;
            pageNum = e.NewPageIndex;
            Paging(pageNum);
        }

        private void Paging(Int32 page)
        {
            grdPatient.PageIndex = page;
            BindData();
        }

        public string sortDir
        {
            get => (string)ViewState["sortDir"];
            set => ViewState["sortDir"] = value;
        }

        protected void grdPatient_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void grdPatient_RowDataBound(object sender, GridViewRowEventArgs e)
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

                    Session["vPatientID"] = txtStudentID.Text.Trim();
                    Session["vFName"] = txtFName.Text.Trim();
                    Session["vLName"] = txtLName.Text.Trim();
                    CheckBox chk = new CheckBox();
                    Label lbl = new Label();
                    string studid = "";
                    DataTier std = new DataTier();
                    if (grdPatient.Rows.Count > 0)  // only do it if there is a row
                    {
                        //For Each item As GridView In grdCustomer.items
                        foreach (GridViewRow row in grdPatient.Rows)
                        {
                            //get the selected checkbox
                            chk = (CheckBox)row.FindControl("chkPatientID");
                            if (chk.Checked)
                            {
                                lbl = (Label)row.Controls[0].FindControl("hidPatientID");
                                studid = lbl.Text.Trim();
                                //delete the record one at a time
                                std.DeletePatient(studid);
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

        }
    }
}