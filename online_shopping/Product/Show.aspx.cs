using System;
using System.Collections.Generic;
using System.Drawing;
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
                string idstr = Request.QueryString["id"];
                int.TryParse(idstr, out id);
                Online_ShoppingEntities db = new Online_ShoppingEntities();
                string username = HttpContext.Current.User.Identity.Name; // نام کاربری لاگین کرده
                var user = db.Users.FirstOrDefault(p => p.UserName == username);
                add.Enabled = user != null;
                var pro = db.Products.FirstOrDefault(p => p.ProductId == id);
                if (pro != null)
                {
                    this.Page.Title = pro.ProductName;
                    Id.Text = pro.ProductId.ToString();
                    Name.Text = pro.ProductName;
                    Sell.Text = pro.ProductSell + " تومان";
                    amount.Text = pro.Amount + " عدد";
                    ImageProduct.ImageUrl = "../Content/Images/Products/" + pro.ImageSrc;
                    if (pro.Amount < 1)
                    {
                        add.Enabled = false;
                        Tb_cnt.Enabled = false;
                        Tb_cnt.Text = "عدم موجودی";
                    }

                }

            }
            else
            {
                add.Enabled = false;
                Tb_cnt.Enabled = false;
            }
        }

        protected void add_Click(object sender, EventArgs e)
        {
            int id = 0;
            int.TryParse(Id.Text, out id);
            int cnt = 0;
            int.TryParse(Tb_cnt.Text, out cnt);
            Online_ShoppingEntities db = new Online_ShoppingEntities();
            var pro = db.Products.FirstOrDefault(p => p.ProductId == id);
             string username = HttpContext.Current.User.Identity.Name;
                var user = db.Users.FirstOrDefault(p => p.UserName == username);
            if (pro != null && user!=null)
            {
                if (cnt<=pro.Amount && cnt > 0)
                {
                    pro.Amount = pro.Amount - cnt;
                    db.UserBaskets.Add(new UserBasket()
                    {
                        UserId = user.UserId,
                        BDate = DateTime.Now,
                        Count = cnt,
                        ProductId = id
                    });
                    db.SaveChanges();
                    LResult.Text = "با موفقیت به سبد کالا شما اضافه شد";
                    LResult.ForeColor=Color.Green;
                }
                else
                {
                    LResult.Text = "کالای شما موجود نمی باشد";
                    LResult.ForeColor = Color.Red;
                }
            }
            else
            {
                LResult.Text = "کالای شما یافت نشد";
                LResult.ForeColor = Color.Red;
            }
        }
    }
}