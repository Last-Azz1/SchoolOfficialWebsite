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

public partial class newsList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ShowNews();
        }
    }
    private void ShowNews()
    {
        String strSql = String.Format("select * from news");
        DataTable dtbl = DbManager.ExecuteDataTable(strSql, null);
        this.rptNews.DataSource = DbManager.GetPageDataSource(AspNetPager1, AspNetPager1.CurrentPageIndex -1, dtbl);
        this.rptNews.DataBind();
    }

    //分页
    protected void AspNetPager1_PageChanging(object src, Wuqi.Webdiyer.PageChangingEventArgs e)
    {
        this.AspNetPager1.CurrentPageIndex = e.NewPageIndex;
        String strSql = String.Format("select * from news order by id desc");
        DataTable dtbl = DbManager.ExecuteDataTable(strSql, null);
        this.rptNews.DataSource = DbManager.GetPageDataSource(AspNetPager1, AspNetPager1.CurrentPageIndex - 1, dtbl);
        this.rptNews.DataBind();
    }

}
