using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_cartControl : System.Web.UI.UserControl
{

    public int ItemsCount { get; set; }
    public decimal ItemsCost { get; set; }

    protected void Page_Load(object sender, EventArgs e)
    {
        cartItems.Text = ItemsCount.ToString();
        cartCost.Text = ItemsCost.ToString();
    }
}