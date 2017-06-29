using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Quotation
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            
            if (IsValid)
            {
                decimal salePrice = Convert.ToDecimal(this.txtSalesPrice.Text);
                decimal discountPercent = (Convert.ToDecimal(this.txtDiscountPercent.Text)) / 100;
                decimal discountAmount = salePrice * discountPercent;
                decimal totalPrice = salePrice - discountAmount;
                this.lblDiscountAmount.Text = discountAmount.ToString();
                this.lblTotalPrice.Text = totalPrice.ToString();
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            this.txtSalesPrice.Text = "";
            this.txtDiscountPercent.Text = "";
            this.lblDiscountAmount.Text = "";
            this.lblTotalPrice.Text = "";
        }

        protected void btncart_Click(object sender, EventArgs e)
        {

        }
    }
}