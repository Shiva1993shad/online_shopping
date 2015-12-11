<%@ Page Title="<%$Resources:Resource, Register%>" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="online_shopping.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2><asp:Literal runat="server" Text="<%$Resources:Resource, FillRegisterForm%>" /></h2>
    </hgroup>

  <section id="loginForm">
        <h2><asp:Literal runat="server" Text="<%$Resources:Resource, EnterSystem%>" /></h2>

                    <fieldset>
                        <legend>Registration Form</legend>
                        <ol>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="UserName"><asp:Literal runat="server" Text="<%$Resources:Resource, Username%>" /></asp:Label>
                                <asp:TextBox runat="server" ID="UserName" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                                    CssClass="field-validation-error" ErrorMessage="<%$Resources:Resource, ErrorEnterUsername%>" />
                            </li>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="Email"><asp:Literal runat="server" Text="<%$Resources:Resource, Email%>" /></asp:Label>
                                <asp:TextBox runat="server" ID="Email" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                    CssClass="field-validation-error" ErrorMessage="<%$Resources:Resource, ErrorEnterEmail%>" />
                            </li>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="Mobile"><asp:Literal runat="server" Text="<%$Resources:Resource, MobilePhone%>" /></asp:Label>
                                <asp:TextBox runat="server" ID="Mobile" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Mobile"
                                    CssClass="field-validation-error" ErrorMessage="<%$Resources:Resource, ErrorEnterMobile%>" />
                            </li>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="Password"><asp:Literal runat="server" Text="<%$Resources:Resource, PassWord%>" /></asp:Label>
                                <asp:TextBox runat="server" ID="Password" TextMode="Password" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                                    CssClass="field-validation-error" ErrorMessage="<%$Resources:Resource, ErrorEnterPass%>" />
                            </li>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="ConfirmPassword"><asp:Literal runat="server" Text="<%$Resources:Resource,RepeatPass%>" /></asp:Label>
                                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="<%$Resources:Resource,ErrorRepeatPass%>" />
                                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="<%$Resources:Resource,ErrorPassNotMatch%>" />
                            </li>
                        </ol>
                        <asp:Button runat="server" CommandName="MoveNext" Text="<%$Resources:Resource,Register%>" OnClick="RegisterUser_Click" />
                        <asp:Label ID="LResult" runat="server" Text=""></asp:Label>
                    </fieldset>
   </section>
</asp:Content>