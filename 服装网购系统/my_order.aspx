<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="my_order.aspx.cs" Inherits="服装网购系统.my_order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align:center">我的订单</div>
    <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="item_id" DataSourceID="SqlDataSource1" GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="item_id" HeaderText="item_id" ReadOnly="True" SortExpression="item_id" />
            <asp:BoundField DataField="order_id" HeaderText="order_id" SortExpression="order_id" />
            <asp:BoundField DataField="product_name" HeaderText="product_name" SortExpression="product_name" />
            <asp:BoundField DataField="product_price" HeaderText="product_price" SortExpression="product_price" />
            <asp:BoundField DataField="buy_count" HeaderText="buy_count" SortExpression="buy_count" />
            <asp:BoundField DataField="total_price" HeaderText="total_price" SortExpression="total_price" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:new_cloth_shopConnectionString %>" SelectCommand="SELECT * FROM [order_item]"></asp:SqlDataSource>
</asp:Content>
