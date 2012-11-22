using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using SB.Sellstation.Website.Libraries.Classes;
//using SB.Sellstation.Website.Libraries.CRUD;
//using SellStation.CRUD;
//using SellStation.Classes;
using System.Web.UI.HtmlControls;
using System.Net;

namespace SB.Sellstation.Website.Dashboard
{
    public partial class EditProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //if (Request.QueryString["Id"] != null && Request.QueryString["sid"] != null)
                //{
                //    int product_id = Convert.ToInt32(Request.QueryString["Id"]);
                //    int seller_id = Convert.ToInt32(Request.QueryString["sid"]);
                //    ProductCRUD pCrud = new ProductCRUD();
                //    CategoriesCRUD cCrud = new CategoriesCRUD();
                //    Product p = pCrud.GetProduct(product_id);
                //    prod_name.Text = p.Name;
                //    pdetails.Text = p.Description;
                //    pquantity.Text = p.Quantity.ToString();
                //    p_price.Text = p.Price.ToString();
                //    ct.DataSource = cCrud.GetCategories();
                //    ct.DataTextField = "name";
                //    ct.DataValueField = "id";
                //    ct.DataBind();
                //}
            }
        }

        protected void save_changes_Click(object sender, EventArgs e)
        {
            //if (prod_name.Text != "" && pdetails.Text != "" && pquantity.Text != "" && ct.SelectedIndex!=-1 && p_price.Text!="" && Request.QueryString["sid"]!=null && Request.QueryString["Id"]!="")
            //{
            //    Product pr = new Product
            //    {
            //        Id=Convert.ToInt32(Request.QueryString["Id"].ToString()),
            //        Category=Convert.ToInt32(ct.SelectedItem.Value),
            //        Description=WebUtility.HtmlEncode(pdetails.Text),
            //        Name=WebUtility.HtmlEncode(prod_name.Text),
            //        Price=Convert.ToDecimal(WebUtility.HtmlEncode(p_price.Text)),
            //        Quantity=Convert.ToInt32(WebUtility.HtmlEncode(pquantity.Text)),
            //        Seller=Convert.ToInt32(Request.QueryString["sid"].ToString())
            //    };
            //    ProductCRUD pCrud = new ProductCRUD();
            //    if (pCrud.UpdateProduct(pr) == true)
            //    {
            //        Response.Redirect("~/Dashboard/Default.aspx");
            //    }
            //    else Response.Redirect("~/Dashboard/Error.aspx");
            //}
        }
    }
}