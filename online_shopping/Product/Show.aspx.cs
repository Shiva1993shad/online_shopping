using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using online_shopping.Models;

namespace online_shopping.Product
{
    public partial class Show : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = 0;
            if (Request.QueryString.AllKeys.Any(p => p == "id"))
            {
                string idstr = Request.QueryString[id];
                int.TryParse(idstr, out id);
                Online_ShoppingEntities db = new Online_ShoppingEntities();
                var pro = db.Products.FirstOrDefault(p => p.ProductId == id);
                if (pro != null)
                {
                    Id.Text = pro.ProductId.ToString();
                    Name.Text = pro.ProductName;
                }
            }

        }
    }
}