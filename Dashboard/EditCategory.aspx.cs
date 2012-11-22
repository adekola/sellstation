using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using SB.Sellstation.Website.Libraries.Classes;
//using SB.Sellstation.Website.Libraries.CRUD;
//using SellStation.Classes;
using System.Net;

namespace SB.Sellstation.Website.Dashboard
{
    public partial class EditCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //CategoriesCRUD cCrud = new CategoriesCRUD();
                //int category_id = Convert.ToInt32(Request.QueryString["Id"].ToString());
                //category cd = cCrud.GetCategory(category_id);
                //if (cd != null)
                //{
                //    catname.Value = cd.Name;
                //    desc.Value = cd.Description;
                //}
            }
        }

        protected void save_changes_Click(object sender, EventArgs e)
        {
            //if (catname.Value != null && desc.Value != "" && Request.QueryString["Id"]!=null)
            //{
            //    category cat = new category { Id = Convert.ToInt32(Request.QueryString["Id"].ToString()), Description = WebUtility.HtmlEncode(catname.Value), Name = WebUtility.HtmlEncode(desc.Value) };
            //    CategoriesCRUD cCrud = new CategoriesCRUD();
            //    //No update method yet
            //    Response.Redirect("~/Dashboard/Default.aspx");
            //}
        }
    }
}