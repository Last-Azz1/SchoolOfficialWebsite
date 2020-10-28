using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["pass"] = 0;
    }
    protected void Unnamed1_Click(object sender, EventArgs e)
    {
            string strSQL = "select * from users where userName='" + inputEmail.Text + "' and password='" + inputPassword.Text + "'";

            if (DbManager.ExecuteQuerydt(strSQL).Rows.Count > 0)
            {
                Session["pass"] = 1;
                Response.Redirect("userManager.aspx");
            }
            else
                Response.Write("<script>alert('用户名或密码错误!')</script>");
        }
    
}
