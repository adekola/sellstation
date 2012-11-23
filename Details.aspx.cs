using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SSLib.Library.CRUD;
using SSLib.Library.Classes;

public partial class Details : System.Web.UI.Page
{
    int pid = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        pid = Convert.ToInt32(Request.QueryString["pid"]);

        LoadProduct(pid);
        //load similar products
    }


    void LoadProduct(int id) 
    {
        //now search for the product and load its details
        Item it = SSLib.Library.CRUD.Items.GetItem(id);
        Controls_productsDetailsControl p = (Controls_productsDetailsControl)Page.LoadControl("Controls/productsDetailsControl.ascx");
        p.ID = it.Id.ToString();
        p.IsDiscounted = it.IsDiscounted;
        p.ProductName = it.Name;
        p.Price = it.Price;
        p.Discount = it.Discount;
        p.DeliveryOption = it.DeliveryOption.ToString();
        p.Desccription = it.Description;
        prodDetails.Controls.Add(p);
    }
}