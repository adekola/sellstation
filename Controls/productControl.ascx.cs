using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_productControl : System.Web.UI.UserControl
{
    decimal price;
    int qty;
    string name;
    string detailsLinkText;

    public decimal Price { get { return price; } set { price = value; } }
    public string Name { get { return name; } set { name = value; } }
    public int Qty { get { return Convert.ToInt32(productQty.Text); } set { qty = value; } }
    public string DetailsLink { get { return detailsLinkText; } set { detailsLinkText = value; } }

    protected void Page_Load(object sender, EventArgs e)
    {
        //here the properties are assigned
        productPrice.Text = Price.ToString();
        productName.Text = Name;
        detailsLink.HRef = detailsLinkText;
    }
}