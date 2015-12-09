using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using online_shopping.Models;
using online_shopping.MyUtility;

namespace online_shopping.Product
{
    public partial class Add : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = HttpContext.Current.User.Identity.Name;
            Online_ShoppingEntities db = new Online_ShoppingEntities();
            var user = db.Users.FirstOrDefault(p => p.UserName == username);
            if (user != null) // Not Login
            {
                if (user.UserType !=1) // Not admin
                {
                    Response.Redirect("~/Default.aspx");
                }
            }
            else
            {
                Response.Redirect("~/Default.aspx");
            }
        }

        protected void add_Click(object sender, EventArgs e)
        {
            string username = HttpContext.Current.User.Identity.Name;
            Online_ShoppingEntities db = new Online_ShoppingEntities();
            var user = db.Users.FirstOrDefault(p => p.UserName == username);
            if (user != null) // Not Login
            {
                if (user.UserType != 1) // Not admin
                {
                    Response.Redirect("~/Default.aspx");
                }
                else
                {
                    int amount = 0;
                    int sell = 0;
                    if (!Int32.TryParse(Tb_Amount.Text,out amount))
                    {
                        LResult.Text = Resources.Resource.ErrorAmountNumber;
                        LResult.ForeColor = Color.Red;
                    }
                    else if (!Int32.TryParse(Tb_Sell.Text, out sell))
                    {
                        LResult.Text = Resources.Resource.ErrorPriceNumber;
                        LResult.ForeColor = Color.Red;
                    }
                    else if(!Fu_image.HasFile)
                    {
                        LResult.Text = Resources.Resource.ErrorPrivewImage;
                        LResult.ForeColor = Color.Red;
                    }
                    else if (!Fu_image.FileName.EndsWith(".jpg"))
                    {
                        LResult.Text = Resources.Resource.ErrorPrivewImageFormat;
                        LResult.ForeColor = Color.Red;
                    }
                    else
                    {
                        string fileName = Path.GetFileName(Fu_image.PostedFile.FileName);
                        Fu_image.PostedFile.SaveAs(Server.MapPath(MyConfigs.ProductImageDir) + fileName); // تبدیل آدرس نسبی به آدرس حقیقی و ذخیره عکس در آنجا
                        online_shopping.Models.Product p = new online_shopping.Models.Product()
                        {
                            ProductName = Tb_Name.Text,
                            Amount = amount,
                            ProductSell = sell,
                            ImageSrc = fileName,
                            ProductInfo_En = tb_InfoEa.Text,
                            ProductInfo_Fa = tb_InfoFa.Text
                        };
                        db.Products.Add(p);
                        db.SaveChanges();
                        LResult.Text = Resources.Resource.AddProuct2DbSuccess;
                        LResult.ForeColor = Color.Green;
                        
                    }
                   

                }
            }
            else
            {
                Response.Redirect("~/Default.aspx");
            }

        }
    }
}