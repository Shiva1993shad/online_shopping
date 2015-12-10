<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Show.aspx.cs" Inherits="online_shopping.Product.Show" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div dir="rtl">
    <table dir="rtl">
        <tr>
            <td>
                <asp:Label ID="Id" runat="server" Text=""></asp:Label>
            </td>
            <td>
               <asp:Literal runat="server" Text="<%$Resources:Resource, ProductId%>" />
            </td>
            
        </tr>
        <tr>
            <td>
                <asp:Label ID="Name" runat="server" Text=""></asp:Label>
            </td>
            <td>
                 <asp:Literal runat="server" Text="<%$Resources:Resource, ProductName%>" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="info" runat="server" Text=""></asp:Label>
            </td>
            <td>
                 <asp:Literal runat="server" Text="<%$Resources:Resource, ProductInfo%>" />
            </td>
        </tr>
        <tr>
            <td>
               <asp:Image ID="ImageProduct" runat="server" style="max-width: 130px;"/>
            </td>
            <td>
                <asp:Literal runat="server" Text="<%$Resources:Resource, ProductPreview%>" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Sell" runat="server" Text=""></asp:Label>
            </td>
            <td>
               <asp:Literal runat="server" Text="<%$Resources:Resource, ProductName%>" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="amount" runat="server" Text=""></asp:Label>
            </td>
            <td>
                <asp:Literal runat="server" Text="<%$Resources:Resource, ItemsCnt%>" />
            </td>
        </tr>
        <tr>
           <td>
                <asp:TextBox ID="Tb_cnt" runat="server"></asp:TextBox>
           </td> 
            <td>
               <asp:Literal runat="server" Text="<%$Resources:Resource, RequestCnt%>" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="add" runat="server" Text="<%$Resources:Resource, AddProduct2Basket%>"  OnClick="add_Click" />
                 <asp:Label ID="LResult" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
        </div>
</asp:Content>
