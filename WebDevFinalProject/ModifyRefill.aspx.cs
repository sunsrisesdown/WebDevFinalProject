using System;
using System.Collections.Generic;
using System.Data;
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
                string rxNumber = TxtBoxNumber.Text/*, date = dtpDate.Value.ToString("yyyy-MM-dd")*/;
                Int32 refillID = Int32.Parse(TxtBoxID.Text.Trim());

                if (refillID > 0)
                {
                    try
                    {
                        string date = DateTime.Parse(TxtRefillDate.Text.Trim()).ToString("yyyy-MM-dd");
                        
                        try
                        {
                            DataTier dt = new DataTier();

                            DataSet aDataSet1 = new DataSet();
                            aDataSet1 = dt.searchPrescription(rxNumber, "", "");
                            Int32 rx_Max = Int32.Parse(aDataSet1.Tables[0].Rows[0]["refill_allowed_count"].ToString());

                            DataSet dataSet2 = new DataSet();
                            dataSet2 = dt.searchRefillRX(rxNumber);
                            Int32 count = dataSet2.Tables[0].Rows.Count;

                            if (count < rx_Max)
                            {
                                try
                                {
                                    dt.UpdateRefill(refillID, rxNumber, date);

                                    Response.Write("<script>alert('The refill has been modified!');</script>");
                                    BtnClear_Click(sender, e);
                                }
                                catch
                                {
                                    Response.Write("<script>alert('Error: SQL failure!');</script>");
                                    TxtBoxID.Focus();
                                }
                            }
                            else
                            {
                                Response.Write("<script>alert('Error: Too many refill records for the prescription!');</script>");
                                TxtBoxID.Focus();
                            }
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

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                Int32 id = Int32.Parse(TxtBoxID.Text);
                if (id > 0)
                {
                    DataTier dt = new DataTier();

                    try
                    {
                        DataSet ds = dt.searchRefill(id);

                        TxtBoxID.Text = ds.Tables[0].Rows[0]["refill_id"].ToString();
                        TxtBoxNumber.Text = ds.Tables[0].Rows[0]["rx_number"].ToString();
                        TxtRefillDate.Text = ds.Tables[0].Rows[0]["date_filled"].ToString();

                    }
                    catch
                    {
                        Response.Write("<script>alert('Error: Either prescription doesn't exist or SQL failure!');</script>");
                        TxtBoxID.Focus();
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
            TxtBoxID.Text = string.Empty;
            TxtBoxNumber.Text = string.Empty;
            TxtRefillDate.Text = string.Empty;
        }
    }
}
