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
    protected void Page_Load(object sender, EventArgs e)
    {
        // load products, populate product divs...
        //load categories of products and add them to teh respective divs
        itemsOnSale = SSLib.Library.CRUD.Items.GetAllItemsinDB();
        if (itemsOnSale.Count > 0) 
        {
            //populate divs on  the fly with data from db

        }
        
    }
}