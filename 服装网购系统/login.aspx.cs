using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace 服装网购系统
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string strUname = TextBox1.Text;
            string strpwd = TextBox2.Text;
            if ((strUname == "张三" &&strpwd=="customer1" )||(strUname== "李四" &&strpwd=="customer2"))
            {
                Response.Write("登录成功！");
                Session["pass"] = "right";
                Session["username"] = strUname;
                Response.Redirect("~/mainform.aspx");
            }
            else
            {
                Response.Write("用户名或密码输入错误！");
                Session["pass"] = null;
            }
            //创建string变量，用于保存sql语句
            /*
            SqlConnection s = new SqlConnection();
            string strsql = "select customer_id from customer where name='" + strUname + "' and password='" + strpwd + "'";
            s.Open();
            SqlCommand c = new SqlCommand(strsql, s);
            object x = c.ExecuteScalar();
            if (x == null)
            {
                Response.Write("你输入的密码或用户名错误，请重新输入！");

            }
            else
            {
                Response.Write("登录成功");
                Response.Redirect("~mainform.aspx");
            }
            s.Close();
            */
        }
    }
}