using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SSLib;
using SSLib.Library.CRUD;
using System.Web.UI.HtmlControls;
using SSLib.Library.Classes;

public partial class Controls_categoriesControl : System.Web.UI.UserControl
{
   
    
    public List<Category> Categories { get; set; }
    protected void Page_Load(object sender, EventArgs e)
    {
        //at init , the caller assigne the categories
        // then this dude populates the category links dynamically
        if (Categories != null) 
        {
            foreach (var item in Categories)
            {
                //new link
                HtmlAnchor a = new HtmlAnchor();
                a.InnerText = item.Name;
                a.HRef = "../Default.aspx?categ=" + item.Id;
            }
        }
    }
}