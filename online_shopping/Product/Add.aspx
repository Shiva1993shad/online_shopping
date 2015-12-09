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
                نام کالا
            </td>
        </tr>
        <tr>
            <td>
                <asp:FileUpload ID="Fu_image" runat="server" />
            </td>
            <td>
               پیش نمایش
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="Tb_Sell" runat="server"></asp:TextBox>
            </td>
            <td>
                قیمت
            </td>
        </tr>
        <tr>
            <td>
               <asp:TextBox ID="Tb_Amount" runat="server"></asp:TextBox>
            </td>
            <td>
                تعداد موجودی
            </td>
        </tr>
        <tr>
            <td>
               <asp:TextBox ID="tb_InfoFa" runat="server"></asp:TextBox>
            </td>
            <td>
                توضیحات فارسی
            </td>
        </tr>
        <tr>
            <td>
               <asp:TextBox ID="tb_InfoEa" runat="server"></asp:TextBox>
            </td>
            <td>
                توضیحات انگلیسی
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
