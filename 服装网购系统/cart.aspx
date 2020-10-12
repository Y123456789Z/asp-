<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="服装网购系统.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align:center">我的购物车</div>
    <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="cart_item_id" DataSourceID="SqlDataSource1" GridLines="Horizontal">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                    
                 </ItemTemplate>
                <HeaderTemplate>
                    <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="true" Text="全选" />
                </HeaderTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="cart_item_id" HeaderText="购买编号" ReadOnly="True" SortExpression="cart_item_id" />
            <asp:BoundField DataField="customer_id" HeaderText="用户ID" SortExpression="customer_id" />
            <asp:BoundField DataField="product_id" HeaderText="产品ID" SortExpression="product_id" />
            <asp:BoundField DataField="product_name" HeaderText="产品名称" SortExpression="product_name" />
            <asp:BoundField DataField="product_price" HeaderText="产品价格" SortExpression="product_price" />
            <asp:BoundField DataField="buy_count" HeaderText="购买数量" SortExpression="buy_count" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:new_cloth_shopConnectionString %>" SelectCommand="SELECT * FROM [cart_item]"></asp:SqlDataSource>
    <div>
        
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />
        温馨提示：更改购买数量后需要点击重新计算！<br />
        总价：<asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        <asp:Button ID="Button1" runat="server" Text="删除商品" />
        <asp:Button ID="Button2" runat="server" Text="清空购物车" />
        <asp:Button ID="Button3" runat="server" Text="重新计算" />
        <asp:Button ID="Button4" runat="server" Text="结算" PostBackUrl="~/add_order.aspx" />
    </div>
</asp:Content>
