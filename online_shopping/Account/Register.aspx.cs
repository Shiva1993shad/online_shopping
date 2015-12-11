using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Membership.OpenAuth;
using online_shopping.Models;
using online_shopping.MyUtility;

namespace online_shopping.Account
{
    public partial class Register : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void RegisterUser_Click(object sender, EventArgs e)
        {
            
           Online_ShoppingEntities db=new Online_ShoppingEntities();
            if (string.IsNullOrEmpty(UserName.Text)
                || string.IsNullOrEmpty(Password.Text)
                || string.IsNullOrEmpty(ConfirmPassword.Text)
                || string.IsNullOrEmpty(Mobile.Text) 
                || string.IsNullOrEmpty(Email.Text)
                )
            {
                LResult.Text = Resources.Resource.ErrorCompleteForm;
                    //"لطفا فرم را به طور کامل تکمیل نمایید";
                LResult.ForeColor = Color.Red;
            }
            else if (Password.Text.Length < 5)
            {
                LResult.Text = Resources.Resource.ErrorShortPass;
                    //"طول پسورد حداقل باید 5 کاراکتر باشد";
                LResult.ForeColor = Color.Red;
            }
            else if(Password.Text!=ConfirmPassword.Text)
            {
                LResult.Text = Resources.Resource.ErrorValidEmailField;
                    //"رمز عبور با تکرار آن یکسان نیست";
                LResult.ForeColor = Color.Red;
            }
            else if (!Email.Text.Contains("@") || !Email.Text.Contains("."))
            {
                LResult.Text = Resources.Resource.ErrorValidEmail;
                    //"لطفا رایانامه معتبر وارد نمایید";
                LResult.ForeColor = Color.Red;
            }
            else if ( !Mobile.Text.StartsWith("09") || Mobile.Text.Length!=11)
            {
                LResult.Text = Resources.Resource.ErrorValidMobile;
                    // "لطفا شماره همراه معتبر وارد نمایید";
                LResult.ForeColor = Color.Red;
            }
            else if(db.Users.Any(p=>p.UserName==UserName.Text))
            {
                LResult.Text = Resources.Resource.ErrorRepeatUsername;
                    //"این نام کاربری قبلا در سیستم ثبت شده است";
                LResult.ForeColor = Color.Red;
            }
            else if (db.Users.Any(p => p.Email == Email.Text))
            {
                LResult.Text = Resources.Resource.ErrorRepeatEmail;
                    //"این رایانامه قبلا در سیستم ثبت شده است";
                LResult.ForeColor = Color.Red;
            }
            else if (db.Users.Any(p => p.Mobile == Mobile.Text))
            {
                LResult.Text = Resources.Resource.ErrorRepeatMobile;
                    //"این موبایل قبلا در سیستم ثبت شده است";
                LResult.ForeColor = Color.Red;
            }
            else if (!MyConfigs.EnableSignUp)
            {
                LResult.Text = Resources.Resource.CantRegisterRightNow;
                    //"در حال حاضر امکان ثبت نام وجود ندارد لطفا مراجعه نمایید";
                LResult.ForeColor = Color.Red;
                
            }
            else
            {
                db.Users.Add(new User()
                {
                    Email = Email.Text,
                    Mobile = Mobile.Text,
                    Password = Password.Text,
                    UserName = UserName.Text
                });
                db.SaveChanges();
                LResult.Text = Resources.Resource.UrUsernameAddSuccessfully;
                //"نام کاربری شما با موفقیت اضافه شد . هم اکنون می توانید به سیستم وارد شوید";
                // Resources.Resource.UrUsernameAddSuccessfully
                LResult.ForeColor = Color.Green;
            }

                
        }
    }
}