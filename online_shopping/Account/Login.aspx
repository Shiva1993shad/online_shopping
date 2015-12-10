<%@ Page Title="ورود" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="online_shopping.Account.Login" %>
<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <section id="loginForm">
        <h2>ورود به سیستم</h2>
                <p class="validation-summary-errors">
                    <asp:Literal runat="server" ID="FailureText" />
                </p>
                <fieldset>
                    <legend>فرم ورود</legend>
                    <ol>
                        <li>
                            <asp:Label runat="server" AssociatedControlID="UserName"><asp:Literal runat="server" Text="<%$Resources:Resource, Username%>" /></asp:Label>
                            <asp:TextBox runat="server" ID="UserName" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" CssClass="field-validation-error" ErrorMessage="The user name field is required." />
                        </li>
                        <li>
                            <asp:Label runat="server" AssociatedControlID="Password"><asp:Literal runat="server" Text="<%$Resources:Resource,PassWord%>" /></asp:Label>
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="field-validation-error" ErrorMessage="The password field is required." />
                        </li>
                        <li>
                            <asp:CheckBox runat="server" ID="RememberMe" />
                            <asp:Label runat="server" AssociatedControlID="RememberMe" CssClass="checkbox"><asp:Literal runat="server" Text="<%$Resources:Resource,RememberMe%>" /></asp:Label>
                        </li>
                    </ol>
                    <asp:Button runat="server" CommandName="Login" Text="ورود" OnClick="Login_Click" />
                    <asp:Label runat="server" ID="Result" ></asp:Label>
                </fieldset>
        <p>
            <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled"><asp:Literal runat="server" Text="<%$Resources:Resource,Register%>" /></asp:HyperLink>
            <asp:Literal runat="server" Text="<%$Resources:Resource,NotRegistered%>" />
        </p>
    </section>
</asp:Content>
