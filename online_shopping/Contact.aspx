<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="online_shopping.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %></h1>
        <h2><asp:Literal runat="server" Text="<%$Resources:Resource, Welcome2ContactUs%>" /></h2>
    </hgroup>

    <section class="">
        <header>
            <h3><asp:Literal runat="server" Text="<%$Resources:Resource, PhoneNumbers%>" /> :</h3>
        </header>
        <p>
            <span class="label"><asp:Literal runat="server" Text="<%$Resources:Resource, MainPhone%>" /></span>
            <span>01732536221</span>
        </p>

    </section>

    <section class="contact">
        <header>
            <h3><asp:Literal runat="server" Text="<%$Resources:Resource, Email%>" /> </h3>
        </header>
        <p>
            <span class="label"><asp:Literal runat="server" Text="<%$Resources:Resource, Support%>" /></span>
            <span><a href="mailto:shivashadrooh72@gmail.com">shivashadrooh72@gmail.com</a></span>
        </p>
        <p>
            <span class="label"><asp:Literal runat="server" Text="<%$Resources:Resource, Marketing%>" /></span>
            <span><a href="mailto:parisahatami193@gmail.com">parisahatami193@gmail.com</a></span>
        </p>

    </section>

    <section class="contact">
        <header>
            <h3><asp:Literal runat="server" Text="<%$Resources:Resource, Address%>" /> :</h3>
        </header>
        <p>
          <asp:Literal runat="server" Text="<%$Resources:Resource, BeheshTAddress%>" />
            
        </p>
    </section>
</asp:Content>