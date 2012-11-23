using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_productsDetailsControl : System.Web.UI.UserControl
{
    public string ProductName { get; set; }
    public string  Desccription { get; set; }
    public decimal  Price { get; set; }
    public bool IsDiscounted { get; set; }
    public double Discount { get; set; }
    public string DeliveryOption { get; set; }


    protected void Page_Load(object sender, EventArgs e)
    {
        initDetails();
    }

    private void initDetails()
    {
        prodDesc.InnerText = Desccription;
        prodName.InnerText = ProductName;
        productTitleText.InnerText = ProductName;
        isDiscount.InnerText = IsDiscounted ? "Yes" : "No";
        prodDiscount.InnerText = string.Format("{0} % ", Discount.ToString());
        old_price_span.Visible = IsDiscounted;
        oldPrice.InnerText = Price.ToString();
        //calc price based on discount
        decimal newP = Price - (((decimal)Discount / 100) * Price);
        newPrice.InnerText = newP.ToString();
        deliveryOption.InnerText = DeliveryOption;
    }
}