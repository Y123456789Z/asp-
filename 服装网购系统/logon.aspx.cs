using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace 服装网购系统
{
    public partial class logon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            /*
            SqlConnection conn = new SqlConnection();

            conn.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\shop.mdf;Integrated Security=True;User Instance=True";
            string username = TextBox1.Text;
            string password = TextBox2.Text;
            
            string tel = TextBox4.Text;
            string strInsert = string.Format("insert into userInfo(Username,Password,Email,Telephone,Postcode) values('{0}',{1},'{2}','{3}','{4}')", username, password, mail, tel, code);
            //打开连接
            conn.Open();
            //创建command对象，并传参：sql语句和connection对象
            SqlCommand comm = new SqlCommand(strInsert, conn);
            //执行查询语句，并用datareader对象dr接收返回结果集
            */
            string username = TextBox1.Text;
            string password = TextBox2.Text;
            if (username == "张三" || username == "李四") { 
                         Response.Write(@"<script>alert('用户名已被占！');</script>");
             }
            else {
                Response.Write(@"<script>alert('注册成功！');</script>");
                System.Threading.Thread.Sleep(TimeSpan.FromSeconds(2));
                Response.Redirect("~/login.aspx");
            }
        }
    }
}