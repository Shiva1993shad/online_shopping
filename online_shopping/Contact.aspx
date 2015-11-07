<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="online_shopping.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %></h1>
        <h2>به صفحه ارتباط با ما خوش آمدید</h2>
    </hgroup>

    <section class="">
        <header>
            <h3>شماره های تماس :</h3>
        </header>
        <p>
            <span class="label">شماره تماس اصلی</span>
            <span>01732536221</span>
        </p>

    </section>

    <section class="contact">
        <header>
            <h3>ایمیل </h3>
        </header>
        <p>
            <span class="label">پشتیبانی :</span>
            <span><a href="mailto:shivashadrooh72@gmail.com">shivashadrooh72@gmail.com</a></span>
        </p>
        <p>
            <span class="label">بخش فروش :</span>
            <span><a href="mailto:parisahatami193@gmail.com">parisahatami193@gmail.com</a></span>
        </p>

    </section>

    <section class="contact">
        <header>
            <h3>آدرس :</h3>
        </header>
        <p>
           تهران_بلوار دانشجو _خیابان ولنجک_دانشگاه شهید بهشتی<br />
            دانشکده علوم و مهندسی کامپیوتر
        </p>
    </section>
</asp:Content>