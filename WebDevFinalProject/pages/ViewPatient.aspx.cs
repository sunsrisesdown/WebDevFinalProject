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
            Cache.Add("StudentData", new DataView(aDataSet.Tables[0]), null, System.Web.Caching.Cache.NoAbsoluteExpiration, System.TimeSpan.FromMinutes(10), System.Web.Caching.CacheItemPriority.Default, null);
            grdPatient.DataBind();
        }

        protected void grdPatient_Sorting(object sender, GridViewSortEventArgs e)
        {

        }

        protected void grdPatient_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }

        protected void grdPatient_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void grdPatient_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void Delete_Click(object sender, CommandEventArgs e)
        {

        }


        protected void lbtnEdit_Click(object sender, CommandEventArgs e)
        {

        }
    }
}