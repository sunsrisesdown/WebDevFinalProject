using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDevFinalProject
{
    public partial class AddRefill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnRefill_Click(object sender, EventArgs e)
        {
            try
            {
                string rxNumber = TxtBoxNumber.Text/*, date = dtpDate.Value.ToString("yyyy-MM-dd"*/;
                Int32 refillID = Int32.Parse(TxtBoxID.Text);

                DataTier dt = new DataTier();

                dt.AddRefill(refillID, rxNumber, null);
                
            }
            catch (Exception ex)
            {
                
            }
        }
    }
}