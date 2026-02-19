using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDevFinalProject
{
    public partial class ModifyRefill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                string rxNumber = TxtBoxNumber.Text, date = /*dtpDate.Value.ToString("yyyy-MM-dd")*/;
                Int32  refillID = Int32.Parse(TxtBoxID.Text.Trim());

                DataTier dt = new DataTier();
                dt.UpdateRefill(refillID, rxNumber, null);
            }
            catch (Exception ex)
            {
               
            }
        }
