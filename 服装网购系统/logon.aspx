<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="logon.aspx.cs" Inherits="服装网购系统.logon" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="background-image:url('/resource/login_logon/back_ground.jpg')">
        <div style="width:600px;height:500px;margin-left:300px;font-family:sans-serif;">
            <div style="text-align:center;color:darkcyan;font-size:larger;margin-top:50px;"><b>欢迎注册</b></div>
            <div style="margin-left:150px;font-size:larger;color:blueviolet;">
                <div style="margin-top:50px;">
            用户名：<asp:TextBox ID="TextBox1" runat="server" BackColor="#FFFFCC" BorderColor="Aqua" BorderStyle="Solid"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="请输入用户名！" SetFocusOnError="true">*</asp:RequiredFieldValidator><br />
               </div>
                <div style="margin-top:30px;">
                密码：<asp:TextBox ID="TextBox2" runat="server" TextMode="Password" BackColor="#FFFFCC" BorderColor="Aqua" BorderStyle="Solid"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="请输入密码！" SetFocusOnError="true">*</asp:RequiredFieldValidator><br />
               </div>
                <div style="margin-top:30px;">
                确认密码：<asp:TextBox ID="TextBox3" runat="server" TextMode="Password" BackColor="#FFFFCC" BorderColor="Aqua" BorderStyle="Solid"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="请输入确认密码！" SetFocusOnError="true">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="密码不一致！" SetFocusOnError="true"></asp:CompareValidator><br />
                </div>
                <div style="margin-top:30px;"> 
                电话号码：<asp:TextBox ID="TextBox4" runat="server" BackColor="#FFFFCC" BorderColor="Aqua" BorderStyle="Solid"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="请输入电话号码！" SetFocusOnError="true">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="格式应为17385667723！" SetFocusOnError="true" ValidationExpression="\d{11}"></asp:RegularExpressionValidator><br />
                </div>

            </div>
            <div style="margin-top:50px;margin-left:300px;">
            <asp:Button ID="Button1" runat="server" Text="确认注册" BorderColor="Yellow" BorderStyle="Solid" Font-Bold="True" ForeColor="#00FFCC" OnClick="Button1_Click" />

            </div>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false" />
        </div>
    </form>
</body>
</html>
