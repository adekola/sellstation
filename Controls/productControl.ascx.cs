using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_productControl : System.Web.UI.UserControl
{
    public decimal Price { get; set; }
    public string Name { get; set; }


    protected void Page_Load(object sender, EventArgs e)
    {
        productPrice.Text = Price.ToString();
        productName.Text = Name;
    }
}