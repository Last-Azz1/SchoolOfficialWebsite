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

public partial class newsManager : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
        }
    }
    protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView2.EditIndex = e.NewEditIndex;
        bind();
    }

    //删除
    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string sqlstr = "delete from news where id='" + GridView2.DataKeys[e.RowIndex].Value.ToString() + "'";
        DbManager.ExcuteNonQuery(sqlstr);
        bind();
    }

    //更新
    protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
    }

    //取消
    protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView2.EditIndex = -1;
        bind();
    }
    //绑定
    public void bind()
    {

        string sqlstr = "select * from news";
        DataSet ds = DbManager.ExexcuteQueryreDataSet(sqlstr, "news");
        GridView2.DataSource = ds;
        GridView2.DataKeyNames = new string[] { "id" };//主键
        GridView2.DataBind();

    }
    protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView2.PageIndex = e.NewPageIndex;
        bind();
    }
}
