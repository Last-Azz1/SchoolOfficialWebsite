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
using System.Data.SqlClient;

public partial class userManager : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     if(!IsPostBack){
                bind();
           }
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        bind();
    }

//删除
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string sqlstr = "delete from users where id='"+GridView1.DataKeys[e.RowIndex].Value.ToString()+"'";
               DbManager.ExcuteNonQuery(sqlstr);
         bind();
    }

//更新
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
            bind();
            string id = GridView1.DataKeys[e.RowIndex].Value.ToString().Trim();
            string username = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[1].Controls[0])).Text.ToString().Trim();
            string password = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[2].Controls[0])).Text.ToString().Trim();
            string sqlstr = "update users set username='" + username + "',password='" + password + "' where id='" + id + "'";
            DbManager.ExcuteNonQuery(sqlstr);
            GridView1.EditIndex = -1;
            bind();
    }

//取消
      protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        bind();
    }
//绑定
    public void bind()
    {
        
        string sqlstr = "select * from users";
               DataSet ds = DbManager.ExexcuteQueryreDataSet(sqlstr, "users");
               GridView1.DataSource = ds;
               GridView1.DataKeyNames = new string[] { "id" };//主键
               GridView1.DataBind();
    }

}
