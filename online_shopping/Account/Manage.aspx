<%@ Page Title="مدیریت پروفایل کاربری" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="online_shopping.Account.Manage" %>
<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>
<%@ Import Namespace="Microsoft.AspNet.Membership.OpenAuth" %>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
    </hgroup>
        <p><asp:Literal runat="server" Text="<%$Resources:Resource,Username%>" /> <strong><%: User.Identity.Name %></strong>.</p>
    <table dir="rtl">
        <tr>
            <td>
                <asp:TextBox ID="tb_mobile" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Literal runat="server" Text="<%$Resources:Resource,MobilePhone%>" />
            </td>
            
        </tr>
         <tr>
            <td>
                <asp:TextBox ID="tb_email" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Literal runat="server" Text="<%$Resources:Resource,Email%>" />
            </td>
             
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btn_Save" runat="server" Text="<%$Resources:Resource,ApplyChange%>" OnClick="btn_Save_Click" />
                <asp:Label ID="LResult" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>
