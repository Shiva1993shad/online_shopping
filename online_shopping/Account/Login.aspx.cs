using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_shopping.Account
{
    public partial class Login : Page
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
            if (UserName.Text == "admin" && Password.Text == "admin")
            {
                Result.Text = "با موفقیت وارد شدید";
                FormsAuthentication.SetAuthCookie("admin", true);
                Response.Redirect("~/Default.aspx");
            }
            else
            {
                Result.Text = "نام کاربری یا رمز عبور اشتباه می باشد";
            }
        }
    }
}