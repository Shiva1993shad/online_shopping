<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="online_shopping.Product.Add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div dir="rtl">
    <table dir="rtl">
        <tr>
            <td>
                <asp:TextBox ID="Tb_Name" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Literal runat="server" Text="<%$Resources:Resource, ProductName%>" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:FileUpload ID="Fu_image" runat="server" />
            </td>
            <td>
              <asp:Literal runat="server" Text="<%$Resources:Resource, ProductPreview%>" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="Tb_Sell" runat="server"></asp:TextBox>
            </td>
            <td>
               <asp:Literal runat="server" Text="<%$Resources:Resource, ProductPrice%>" />
            </td>
        </tr>
        <tr>
            <td>
               <asp:TextBox ID="Tb_Amount" runat="server"></asp:TextBox>
            </td>
            <td>
                 <asp:Literal runat="server" Text="<%$Resources:Resource, ItemsCnt%>" />
            </td>
        </tr>
        <tr>
            <td>
               <asp:TextBox ID="tb_InfoFa" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                 <asp:Literal runat="server" Text="<%$Resources:Resource, FarsiDescription%>" />
            </td>
        </tr>
        <tr>
            <td>
               <asp:TextBox ID="tb_InfoEa" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <asp:Literal runat="server" Text="<%$Resources:Resource, EnglishDescription%>" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="add" runat="server" Text="<%$Resources:Resource, AddProduct2Db%>" OnClick="add_Click" />
                 <asp:Label ID="LResult" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
        </div>
</asp:Content>
