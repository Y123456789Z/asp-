<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="服装网购系统.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>login</title>
</head>
<body>
    <form id="form1" runat="server" style="background-image:url('/resource/login_logon/back_ground.jpg')">
        
        <div style="width:400px;height:500px;margin-left:300px;font-family:sans-serif;background-image:url('/resource/login_logon/login_bg.jpg')">
            
            <div style="text-align:center;color:darkcyan;font-size:larger;margin-top:50px;">欢迎登陆</div> 
            <div style="margin-left:60px;font-size:larger;color:blueviolet;">
                <div style="margin-top:50px;">
            用户名：<asp:TextBox ID="TextBox1" runat="server" BackColor="#FFFF99" BorderColor="Aqua" BorderStyle="Solid"></asp:TextBox>
                </div>
                <div style="margin-top:30px;">
            密码：<asp:TextBox ID="TextBox2" runat="server" BackColor="#FFFF99" BorderColor="Aqua" BorderStyle="Solid"></asp:TextBox><br />
            </div>
            </div>
            <div style="margin-top:50px;margin-left:300px;">
            <asp:Button ID="Button1" runat="server" Text="登陆" BackColor="#ff6600" BorderStyle="Ridge" Font-Bold="true" OnClick="Button1_Click" /><br />
           </div>
            <div style="margin-top:80px;">
                <div style="margin-left:10px; display:inline;">
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/logon.aspx">立即注册</asp:LinkButton>
                </div>
                <div style="margin-left:200px;display:inline;">
            <asp:LinkButton ID="LinkButton2" runat="server">忘记密码？</asp:LinkButton>
                  </div>
            </div>
        </div>
    </form>
</body>
</html>
