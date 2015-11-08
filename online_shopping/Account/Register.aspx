<%@ Page Title="ثبت نام" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="online_shopping.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>برای ثبت نام از قسمت پایین استفاده نمایید</h2>
    </hgroup>

  <section id="loginForm">
        <h2>ورود به سیستم</h2>

                    <fieldset>
                        <legend>Registration Form</legend>
                        <ol>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="UserName">نام کاربری</asp:Label>
                                <asp:TextBox runat="server" ID="UserName" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                                    CssClass="field-validation-error" ErrorMessage="لطفا نام کاربری را وارد نمایید" />
                            </li>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="Email">رایانامه</asp:Label>
                                <asp:TextBox runat="server" ID="Email" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                    CssClass="field-validation-error" ErrorMessage="لطفا رایانامه را وارد نمایید" />
                            </li>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="Mobile">شماره همراه</asp:Label>
                                <asp:TextBox runat="server" ID="Mobile" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Mobile"
                                    CssClass="field-validation-error" ErrorMessage="لطفا شماره همراه را وارد نمایید" />
                            </li>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="Password">رمز عبور</asp:Label>
                                <asp:TextBox runat="server" ID="Password" TextMode="Password" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                                    CssClass="field-validation-error" ErrorMessage="رمز عبور را وارد نمایید" />
                            </li>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="ConfirmPassword">تکرار رمز عبور</asp:Label>
                                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="تکرار رمز عبور را وارد نمایید" />
                                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="رمز عبور و تکرار آن یکسان نیست" />
                            </li>
                        </ol>
                        <asp:Button runat="server" CommandName="MoveNext" Text="ثبت نام" OnClick="RegisterUser_Click" />
                        <asp:Label ID="LResult" runat="server" Text=""></asp:Label>
                    </fieldset>
   </section>
</asp:Content>