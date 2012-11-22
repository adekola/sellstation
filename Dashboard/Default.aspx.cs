using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
//using SellStation.CRUD;
//using SellStation.Classes;
//using SB.Sellstation.Website.Libraries.Classes;
//using SB.Sellstation.Website.Libraries.CRUD;
using System.Web.UI.HtmlControls;
using AjaxControlToolkit;
using System.IO;

namespace SB.Sellstation.Website.Dashboard
{
    public partial class Default : System.Web.UI.Page
    {
        //ProductCRUD pCrud;
        //CategoriesCRUD cCrud;
        //StoresCRUD sCrud;
        //OrdersCRUD oCrud;

        protected void Page_Load(object sender, EventArgs e)
        {
           // AsyncFileUpload1.UploaderStyle = AjaxControlToolkit.AsyncFileUpload.UploaderStyleEnum.Modern;
            AsyncFileUpload1.UploadedComplete += new EventHandler<AsyncFileUploadEventArgs>(AsyncFileUpload1_UploadedComplete);
            AsyncFileUpload1.UploadedFileError += new EventHandler<AsyncFileUploadEventArgs>(AsyncFileUpload1_UploadedFileError);
            //pCrud = new ProductCRUD();
            //Session["seller_id"] = 1;
            
            //List<Product> prodlist = pCrud.GetProducts();
            //if (prodlist != null)
            //{
            //    foreach (Product item in prodlist)
            //    {
            //        HtmlTableRow row = CreateTableRows();
            //        HtmlTableCell cell2 = CreateTableCell();
            //        HtmlTableCell cell1 = CreateTableCell();
            //        HtmlTableCell cell3 = CreateTableCell();
            //        HtmlTableCell cell4 = CreateTableCell();
            //        HtmlTableCell cell0 = CreateTableCell();
            //        HtmlInputCheckBox chk = new HtmlInputCheckBox();
            //        cell0.Controls.Add(chk);
            //        cell1.InnerHtml = item.Name;
            //        cell3.InnerHtml = item.Price.ToString();
            //        cell2.InnerHtml = item.Description;
            //        cell4.InnerHtml = "<a href=\"EditProduct.aspx?Id=" + item.Id + "&sid=" + item.Seller + "\"><input type=\"image\" title=\"Edit\" src=\"images/icn_edit_article.png\" alt=\"\" /></a>&nbsp;&nbsp;<a href=\"DeleteProduct.aspx?id=" + item.Id + "&sid=" + item.Seller + "\"><input type=\"image\" title=\"Delete\" src=\"images/icn_trash.png\" alt=\"\"/></a>";
            //        row.Cells.Add(cell0);
            //        row.Cells.Add(cell1);
            //        row.Cells.Add(cell3);
            //        row.Cells.Add(cell2);
            //        row.Cells.Add(cell4);
            //        row.Attributes["class"] = "tablesorter tr";
            //        products_tbl.Rows.Add(row);
            //    }
            //}
            //cCrud = new CategoriesCRUD();
            //List<category> catlist = cCrud.GetCategories();
            //if (catlist != null)
            //{
            //    foreach (category item in catlist)
            //    {
            //        HtmlTableRow row = CreateTableRows();
            //        HtmlTableCell cell2 = CreateTableCell();
            //        HtmlTableCell cell1 = CreateTableCell();
            //        HtmlTableCell cell3 = CreateTableCell();
            //        HtmlTableCell cell4 = CreateTableCell();
            //        HtmlTableCell cell0 = CreateTableCell();
            //        HtmlInputCheckBox chk = new HtmlInputCheckBox();
            //        cell0.Controls.Add(chk);
            //        cell1.InnerHtml = item.Id.ToString();
            //        cell3.InnerHtml = item.Name;
            //        cell2.InnerHtml = item.Description;
            //        cell4.InnerHtml = "<a href=\"EditCategory.aspx?Id=" + item.Id + "\"><input type=\"image\" title=\"Edit\" src=\"images/icn_edit_article.png\" alt=\"\" /></a>&nbsp;&nbsp;<a href=\"DeleteCategory.aspx?id=" + item.Id + "\"><input type=\"image\" title=\"Delete\" src=\"images/icn_trash.png\" alt=\"\"/></a>";
            //        row.Cells.Add(cell0);
            //        row.Cells.Add(cell1);
            //        row.Cells.Add(cell3);
            //        row.Cells.Add(cell2);
            //        row.Cells.Add(cell4);
            //        row.Attributes["class"] = "tablesorter tr";
            //        category_tbl.Rows.Add(row);
            //    }
            //}
        }
        protected HtmlTableRow CreateTableRows()
        {
            return new HtmlTableRow();
        }
        protected HtmlTableCell CreateTableCell()
        {
            return new HtmlTableCell();
        }

        protected void save_new_product_Click(object sender, EventArgs e)
        {
        //    pCrud = new ProductCRUD();
        //    if (txtprodName.Value != "" && txtprodDesc.Value != "" && txtPrice.Value != "" && txtQuantity.Value != "" && prodcategory.SelectedIndex != -1)
        //    {
        //        string name =WebUtility.HtmlEncode(txtprodName.Value);
        //        string descr = WebUtility.HtmlEncode(txtprodDesc.Value);
        //        decimal price = Convert.ToDecimal(WebUtility.HtmlEncode(txtPrice.Value));
        //        int quantity = Convert.ToInt32(WebUtility.HtmlEncode(txtQuantity.Value));
        //        int category_id = Convert.ToInt32(prodcategory.SelectedItem.Value);
        //        int sellerid = 0;
        //        if (Session["seller_id"] != null)
        //        {
        //            sellerid = Convert.ToInt32(Session["seller_id"]);
        //        }
        //        else Response.Redirect("~/Login.aspx");
                
        //        Product prod = new Product
        //        {
        //            Category=category_id,
        //            Description=descr,
        //            Name=name,
        //            Price=price,
        //            Quantity=quantity,
        //            Seller=sellerid
        //        };
        //        if (pCrud.AddProduct(prod) == true)
        //        {
        //            Response.Redirect("~/Dashboard/Default.aspx");
        //        }
        //        else Response.Redirect("~/Error.aspx");
        //    }
        }

        protected void upload_Click(object sender, EventArgs e)
        {
           
        }
        void AsyncFileUpload1_UploadedComplete(object sender, AsyncFileUploadEventArgs e) {
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "size", "top.$get(\"" + uploadResult.ClientID + "\").innerHTML = 'Uploaded size: " + AsyncFileUpload1.FileBytes.Length.ToString() + "';", true);

         //Uncomment to save to AsyncFileUpload\Uploads folder.
         //ASP.NET must have the necessary permissions to write to the file system.

         string savePath = MapPath("~/Dashboard/Uploads/" + Path.GetFileName(e.FileName));
         AsyncFileUpload1.SaveAs(savePath);
    }

    void AsyncFileUpload1_UploadedFileError(object sender, AsyncFileUploadEventArgs e) {
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "error", "top.$get(\"" + uploadResult.ClientID + "\").innerHTML = 'Error: " + e.StatusMessage + "';", true);
    }
    }
}