using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SSLib.Library.CRUD;
using SSLib.Library;
using SSLib.Library.Classes;
using System.Web.UI.HtmlControls;


public partial class _Default : System.Web.UI.Page
{
    List<Item> itemsOnSale;
    int pCount = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            LoadProducts();
        }
    }

    private void LoadProducts()
    {
        // load products, populate product divs...
        //load categories of products and add them to teh respective divs
        itemsOnSale = SSLib.Library.CRUD.Items.GetAllItemsinDB();
        if (itemsOnSale.Count > 0)
        {
            foreach (var item in itemsOnSale)
            {
                Controls_productControl p = (Controls_productControl)Page.LoadControl("Controls/productControl.ascx");
                p.DetailsLink = "~/Details.aspx?pid="+ item.Id; //append teh id of the product it get its details
                p.ID = (pCount++).ToString();
                p.Name = item.Name;
                p.Price = item.Price;
                products.Controls.Add(p);
            }
        }
    }



}