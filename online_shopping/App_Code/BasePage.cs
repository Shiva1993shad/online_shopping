﻿
using System.Threading;
using System.Globalization;

///<summary>
/// Summary description for BasePage
///</summary>
public class BasePage : System.Web.UI.Page
{
    protected override void InitializeCulture()
    {
        string language = "fa";


        //Check if PostBack is caused by Language DropDownList.
        if (Request.Form["__EVENTTARGET"] != null && Request.Form["__EVENTTARGET"].Contains("ddlLanguages"))
        {
            //Set the Language.
            language = Request.Form[Request.Form["__EVENTTARGET"]];
        }

        //Set the Culture.
        Thread.CurrentThread.CurrentCulture = new CultureInfo(language);
        Thread.CurrentThread.CurrentUICulture = new CultureInfo(language);
    }
}
