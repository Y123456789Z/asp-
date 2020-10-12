<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="personal.aspx.cs" Inherits="服装网购系统.personal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="修改密码" /><br />
            <div>
                我的订单
                <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" DataKeyNames="item_id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="item_id" HeaderText="item_id" ReadOnly="True" SortExpression="item_id" />
                        <asp:BoundField DataField="order_id" HeaderText="order_id" SortExpression="order_id" />
                        <asp:BoundField DataField="product_name" HeaderText="product_name" SortExpression="product_name" />
                        <asp:BoundField DataField="product_price" HeaderText="product_price" SortExpression="product_price" />
                        <asp:BoundField DataField="buy_count" HeaderText="buy_count" SortExpression="buy_count" />
                        <asp:BoundField DataField="total_price" HeaderText="total_price" SortExpression="total_price" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:new_cloth_shopConnectionString %>" SelectCommand="SELECT * FROM [order_item]"></asp:SqlDataSource>
            </div>
        </div>
    </form>
</body>
</html>
