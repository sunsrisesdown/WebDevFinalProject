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
                string rxNumber = TxtBoxNumber.Text/*, date = dtpDate.Value.ToString("yyyy-MM-dd")*/;
                Int32 refillID = Int32.Parse(TxtBoxID.Text.Trim());

                if (refillID > 0)
                {
                    try
                    {
                        DateTime date = DateTime.Parse(TxtRefillDate.Text.Trim());

                        try
                        {
                            DataTier dt = new DataTier();
                            dt.AddRefill(refillID, rxNumber, date.ToString("yyyy-MM-dd"));

                            Response.Write("<script>alert('Error: The refill has been created!');</script>");
                            BtnClear_Click(sender, e);
                        }
                        catch
                        {
                            Response.Write("<script>alert('Error: Either prescription doesn't exist or SQL failure!');</script>");
                            TxtBoxID.Focus();
                        }

                    }
                    catch
                    {
                        Response.Write("<script>alert('Error: Invalid Date!');</script>");
                        TxtRefillDate.Focus();
                    }
                }
                else
                {
                    Response.Write("<script>alert('Error: Invalid ID!');</script>");
                    TxtBoxID.Focus();
                }
            }
            catch
            {
                Response.Write("<script>alert('Error: Invalid ID!');</script>");
                TxtBoxID.Focus();
            }
        }

        protected void BtnClear_Click(object sender, EventArgs e)
        {

        }
    }
}