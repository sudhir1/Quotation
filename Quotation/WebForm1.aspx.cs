using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Quotation
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (PreviousPage != null)
            {
                
                 
             TextBox lblTotalPrice1 = (TextBox) PreviousPage.FindControl("txtSalesPrice");
                lblTotalPrice.Text = lblTotalPrice1.Text;

            }
        }
    }
}