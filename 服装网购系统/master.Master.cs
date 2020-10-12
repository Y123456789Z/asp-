using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace 服装网购系统
{
    public partial class master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["pass"] != null)
            {
                Label1.Text = "欢迎您，" + Session["username"].ToString();
               
            }
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Redirect("'/seach.aspx");
        }
    }
}