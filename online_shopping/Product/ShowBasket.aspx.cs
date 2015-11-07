using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using online_shopping.Models;

namespace online_shopping.Product
{
    public partial class ShowBasket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = HttpContext.Current.User.Identity.Name;
            Online_ShoppingEntities db = new Online_ShoppingEntities();
            var user = db.Users.FirstOrDefault(p => p.UserName == username);
            if (user != null)
            {
                GridView1.DataSource = user.UserBaskets.Where(p=>p.UserId==user.UserId).Select(p => new { p.Id,p.Product.ProductName, p.Count });
                GridView1.DataBind();
                l_sum.Text =
                    user.UserBaskets.Where(p => p.UserId == user.UserId)
                        .Sum(p => p.Count*p.Product.ProductSell)
                        .ToString()+" تومان";
            }
           
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            int value=0;
            int.TryParse(row.Cells[2].Text, out value); // id dar userbasket 
            Online_ShoppingEntities db = new Online_ShoppingEntities();
            var bas = db.UserBaskets.FirstOrDefault(p => p.Id == value);
            if (bas != null)
            {
                var product = db.Products.FirstOrDefault(p => p.ProductId == bas.ProductId);
                if (product != null)
                    product.Amount += bas.Count;
                db.UserBaskets.Remove(bas);
                db.SaveChanges(); // generate query to save database

            }
            string username = HttpContext.Current.User.Identity.Name; // refresh gridview baray gereftan data jadid
            var user = db.Users.FirstOrDefault(p => p.UserName == username);
            if (user != null)
            {
                GridView1.DataSource = user.UserBaskets.Where(p => p.UserId == user.UserId).Select(p => new { p.Id, p.Product.ProductName, p.Count });
                GridView1.DataBind();
                l_sum.Text =
                   user.UserBaskets.Where(p => p.UserId == user.UserId)
                       .Sum(p => p.Count * p.Product.ProductSell)
                       .ToString() + " تومان";
            }

        }
    }
}