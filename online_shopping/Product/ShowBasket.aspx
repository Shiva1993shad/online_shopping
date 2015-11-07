<%@ Page Title="نمایش سبد کالا" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShowBasket.aspx.cs" Inherits="online_shopping.Product.ShowBasket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div dir="rtl" style="font-family: tahoma; direction: rtl; text-align: center;">
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
        autogeneratecolumns="False" dir="rtl" Height="140px" Width="581px" Font-Names="Tahoma" OnRowDeleting="GridView1_RowDeleting">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField  DataField="Count" HeaderText="تعداد کالا" />
            <asp:BoundField DataField="ProductName" HeaderText="نام کالا" />
            <asp:BoundField DataField="Id" HeaderText="کد درخواست" />
            <asp:CommandField DeleteText="حذف" ShowDeleteButton="True" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle"/>
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" VerticalAlign="Middle" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
        <table>
            <tr>
                <td><asp:Label ID="l_sum" runat="server" Text=""></asp:Label></td>
                <td>مجموع فاکتور</td>
                
            </tr>
        </table>
    </div>
</asp:Content>
