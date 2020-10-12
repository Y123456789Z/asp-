<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="add_order.aspx.cs" Inherits="服装网购系统.add_order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-color:greenyellow;">
        <div style="text-align:center;color:darkorange;">填写发货地址</div>
        
        <table style="margin-left:400px;color:cornflowerblue;">
            <tr>
                <td>
                    送货地址：
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>具体地址：</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    联系电话：
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="提交结算" PostBackUrl="~/my_order.aspx" /></td>
            </tr>
        </table>
        
    </div>
</asp:Content>
