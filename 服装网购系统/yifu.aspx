<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="yifu.aspx.cs" Inherits="服装网购系统.yifu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align:center">衣服商品详情</div>
    <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="product_id" DataSourceID="SqlDataSource1" GridLines="Horizontal">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                    
                 </ItemTemplate>
                <HeaderTemplate>
                    <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="true" Text="全选" />
                </HeaderTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="product_id" HeaderText="产品编号" ReadOnly="True" SortExpression="product_id" />
            <asp:BoundField DataField="product_price" HeaderText="产品价格" SortExpression="product_price" />
            <asp:BoundField DataField="product_name" HeaderText="产品名称" SortExpression="product_name" />
            <asp:BoundField DataField="size" HeaderText="产品大小" SortExpression="size" />
            <asp:BoundField DataField="discribe" HeaderText="描述" SortExpression="discribe" />
            <asp:BoundField DataField="class" HeaderText="类别" SortExpression="class" />
            <asp:BoundField DataField="save_count" HeaderText="库存量" SortExpression="save_count" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/cart.aspx">购买</asp:HyperLink>
                    
                </ItemTemplate>
                <HeaderTemplate>
                    加入购物车
                   
                </HeaderTemplate>
            </asp:TemplateField>
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

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:new_cloth_shopConnectionString %>" SelectCommand="SELECT * FROM [yifu]"></asp:SqlDataSource>

</asp:Content>
