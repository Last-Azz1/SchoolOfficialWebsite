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

public partial class addUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        string strSQL = "insert users (  username,password) values ( '" + inputEmail.Text + "','" + inputPassword.Text + "')";
        if (DbManager.ExcuteNonQuery(strSQL)>0)
            {
                Response.Write("<script>alert('注册成功')</script>");
                Response.Redirect("userManager.aspx");
            }
    }
}
