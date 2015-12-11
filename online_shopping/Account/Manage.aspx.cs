using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

using Microsoft.AspNet.Membership.OpenAuth;
using online_shopping.Models;

namespace online_shopping.Account
{
    public partial class Manage : BasePage
    {
        protected void Page_Load()
        {
            Online_ShoppingEntities db = new Online_ShoppingEntities();
            string username = HttpContext.Current.User.Identity.Name;
            var user = db.Users.FirstOrDefault(p => p.UserName == username);
            if (user != null)
            {
                tb_email.Text=user.Email ;
                tb_mobile.Text=user.Mobile;
            }
            else
            {
                Response.Redirect("~/Default.aspx");
            }
        }
        protected void btn_Save_Click(object sender, EventArgs e)
        {
            Online_ShoppingEntities db = new Online_ShoppingEntities();
            string username = HttpContext.Current.User.Identity.Name;
            var user = db.Users.FirstOrDefault(p => p.UserName == username);
            if (user != null)
            {
                user.Email = tb_email.Text;
                user.Mobile = tb_mobile.Text;
                db.SaveChanges();
                LResult.Text = "اطلاعات شما با موفقیت ویرایش شد";
                LResult.ForeColor = Color.Green;
            }
            else
            {
                LResult.Text = "کاربری یافت نشد";
                LResult.ForeColor=Color.Red;
            }
        }
    }
}