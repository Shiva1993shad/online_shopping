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
                کد کالا
            </td>
            
        </tr>
        <tr>
            <td>
                <asp:Label ID="Name" runat="server" Text=""></asp:Label>
            </td>
            <td>
                نام کالا
            </td>
        </tr>
        <tr>
            <td>
               <asp:Image ID="ImageProduct" runat="server" />
            </td>
            <td>
               پیش نمایش
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Sell" runat="server" Text=""></asp:Label>
            </td>
            <td>
                قیمت
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="amount" runat="server" Text=""></asp:Label>
            </td>
            <td>
                تعداد موجودی
            </td>
        </tr>
        <tr>
           <td>
                <asp:TextBox ID="Tb_cnt" runat="server"></asp:TextBox>
           </td> 
            <td>
                تعداد درخواست
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="add" runat="server" Text="افزودن به سبد کالا" OnClick="add_Click" />
                 <asp:Label ID="LResult" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
        </div>
</asp:Content>
