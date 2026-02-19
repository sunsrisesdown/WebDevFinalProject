using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDevFinalProject
{
    public partial class DeleteRefill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnDeleteRefill_Click(object sender, EventArgs e)
        {
            try
            {
                string rxNum = TxtBoxNumber.Text.Trim();
                Int32 refillID = Int32.Parse(TxtBoxID.Text);

                DataTier db = new DataTier();
                db.DeleteRefill(rxNum, refillID);
                
            }
            catch (Exception ex)
            {
               
            }
        }
    }
    }
}