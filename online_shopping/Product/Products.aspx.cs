using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using online_shopping.Models;

namespace online_shopping.Product
{
    public partial class Products : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IQueryable<Models.Product> GetProducts(int? categoryId)
        {
            var _db =  new Online_ShoppingEntities();
            IQueryable<Models.Product> query = _db.Products;
            if (Request.QueryString.AllKeys.Any(p=>p=="query"))
            {
                string querystr = Request.QueryString["query"];
                query = query.Where(p => p.ProductName.Contains(querystr));
            }
            if (categoryId.HasValue && categoryId > 0)
            {
                query = query.Where(p => p.ProductCats.Any(pc=>pc.CatagoryId==categoryId));
            }
            return query;
        }
    }
}