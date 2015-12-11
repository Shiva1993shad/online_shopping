using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using online_shopping.Models;

namespace online_shopping.Account
{
    public partial class Login : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterHyperLink.NavigateUrl = "Register";

            var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
            if (!String.IsNullOrEmpty(returnUrl))
            {
                RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
            }
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            Online_ShoppingEntities db=new Online_ShoppingEntities();
            if (db.Users.Any(p=>p.UserName==UserName.Text && p.Password==Password.Text))
            {
                Result.Text = "با موفقیت وارد شدید";
                FormsAuthentication.SetAuthCookie(UserName.Text, true);
                Response.Redirect("~/Default.aspx");
            }
            else
            {
                Result.Text = "نام کاربری یا رمز عبور اشتباه می باشد";
            }
        }
    }
}