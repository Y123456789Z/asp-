<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="mainform.aspx.cs" Inherits="服装网购系统.mainform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align:center">
        <b>
        种类多样 彰显气质 快来选购吧
        </b>
    </div>
    <table style="width:100%">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" Width=100% AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="product_id" DataSourceID="SqlDataSource1" GridLines="Horizontal">
                    <Columns>
                        <asp:BoundField DataField="product_id" HeaderText="商品编号" ReadOnly="True" SortExpression="product_id" />
                        <asp:BoundField DataField="product_price" HeaderText="商品价格" SortExpression="product_price" />
                        <asp:BoundField DataField="product_name" HeaderText="商品名称" SortExpression="product_name" />
                        <asp:BoundField DataField="size" HeaderText="商品尺码" SortExpression="size" />
                        <asp:BoundField DataField="discribe" HeaderText="相关描述" SortExpression="discribe" />
                        <asp:BoundField DataField="class" HeaderText="类别" SortExpression="class" />
                        <asp:BoundField DataField="save_count" HeaderText="库存量" SortExpression="save_count" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:new_cloth_shopConnectionString %>" SelectCommand="SELECT * FROM [yifu]" ></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView2" runat="server" Width=100% AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="product_id" DataSourceID="SqlDataSource2" GridLines="Horizontal">
                    <Columns>
                        <asp:BoundField DataField="product_id" HeaderText="商品编号" ReadOnly="True" SortExpression="product_id" />
                        <asp:BoundField DataField="product_price" HeaderText="商品价格" SortExpression="product_price" />
                        <asp:BoundField DataField="product_name" HeaderText="商品名称" SortExpression="product_name" />
                        <asp:BoundField DataField="size" HeaderText="商品尺码" SortExpression="size" />
                        <asp:BoundField DataField="discribe" HeaderText="相关描述" SortExpression="discribe" />
                        <asp:BoundField DataField="class" HeaderText="类别" SortExpression="class" />
                        <asp:BoundField DataField="save_count" HeaderText="库存量" SortExpression="save_count" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:new_cloth_shopConnectionString %>" SelectCommand="SELECT * FROM [kuzi]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView3" runat="server" Width=100% AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="product_id" DataSourceID="SqlDataSource3" GridLines="Horizontal">
                    <Columns>
                        <asp:BoundField DataField="product_id" HeaderText="商品编号" ReadOnly="True" SortExpression="product_id" />
                        <asp:BoundField DataField="product_price" HeaderText="商品价格" SortExpression="product_price" />
                        <asp:BoundField DataField="product_name" HeaderText="商品名称" SortExpression="product_name" />
                        <asp:BoundField DataField="size" HeaderText="商品尺码" SortExpression="size" />
                        <asp:BoundField DataField="discribe" HeaderText="相关描述" SortExpression="discribe" />
                        <asp:BoundField DataField="class" HeaderText="类别" SortExpression="class" />
                        <asp:BoundField DataField="save_count" HeaderText="库存量" SortExpression="save_count" />
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
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:new_cloth_shopConnectionString %>" SelectCommand="SELECT * FROM [xie]"></asp:SqlDataSource>
            </td>
        </tr>
        </table>
</asp:Content>
