using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data.OleDb;

/// <summary>
///DbManager 的摘要说明
/// </summary>
public class DbManager
{
	public DbManager()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}

    public static SqlDataReader ExexcuteQueryre(string strSQL)
    {
        string strconn=WebConfigurationManager.ConnectionStrings[  "aaaaa"    ].ConnectionString;

        SqlConnection conn = new SqlConnection(strconn);

        conn.Open();

        SqlCommand cmd = new SqlCommand(strSQL,conn);

        SqlDataReader re = cmd.ExecuteReader();

        return re;
        conn.Close();


    }

    public static DataSet ExexcuteQueryreDataSet(string strSQL, string table)
    {
        string strconn = WebConfigurationManager.ConnectionStrings["aaaaa"].ConnectionString;
        SqlConnection conn = new SqlConnection(strconn);
        SqlDataAdapter da = new SqlDataAdapter(strSQL, conn);
        conn.Open();
        DataSet ds = new DataSet();
        da.Fill(ds,table);
        return ds;
        conn.Close();
    }


    public static DataTable ExecuteQuerydt(string strSQL)
    {
        string strconn = WebConfigurationManager.ConnectionStrings["aaaaa"].ConnectionString;

        SqlConnection conn = new SqlConnection(strconn);

        conn.Open();

        SqlDataAdapter sda = new SqlDataAdapter(  strSQL,conn                );


        DataSet ds = new DataSet();
        sda.Fill(ds);
        return ds.Tables[0];
        conn.Close();



    }


    public static int ExcuteNonQuery(string strSQL)
    {
        string strconn = WebConfigurationManager.ConnectionStrings["aaaaa"].ConnectionString;

        SqlConnection conn = new SqlConnection(strconn);

        conn.Open();

        SqlCommand cmd = new SqlCommand(strSQL,conn);

        return (cmd.ExecuteNonQuery());
        conn.Close();


    }
    public static DataTable ExecuteDataTable(string sql, params SqlParameter[] pms)
    {
        string strconn = WebConfigurationManager.ConnectionStrings["aaaaa"].ConnectionString;
        DataTable dt = new DataTable();
        using (SqlDataAdapter adapter = new SqlDataAdapter(sql, strconn))
        {
            if (pms != null)
            {
                adapter.SelectCommand.Parameters.AddRange(pms);
            }
            adapter.Fill(dt);
        }
        return dt;
    }
    public static PagedDataSource GetPageDataSource(Wuqi.Webdiyer.AspNetPager AspNetPager1, int currentIndex, DataTable dt)
    {
        PagedDataSource source = new PagedDataSource();
        AspNetPager1.RecordCount = dt.Rows.Count;
        source.DataSource = dt.DefaultView;
        source.AllowPaging = true;
        source.CurrentPageIndex = currentIndex;
        source.PageSize = AspNetPager1.PageSize;
        return source;
    }
    public static string GetStringNum(string Content, int Num)
    {
        if (Content == null || Content == string.Empty || Content.Length < Num)
            return Content;

        char[] cArray = Content.ToCharArray();
        int iAlreadyNum = 0;
        int iOkLenNum = 0;
        foreach (char cH in cArray)
        {
            if (iAlreadyNum < Num * 2)
            {
                if (cH > 128)
                {
                    iAlreadyNum += 2;
                }
                else
                    iAlreadyNum++;
                iOkLenNum++;
            }
            else
                break;
        }
        Content = Content.Substring(0, iOkLenNum);
        return Content;
    }


    public static object ExcuteScalar(string strSQL)
    {
        string strconn = WebConfigurationManager.ConnectionStrings["aaaaa"].ConnectionString;

        SqlConnection conn = new SqlConnection(strconn);

        conn.Open();
        try
        {


            SqlCommand cmd = new SqlCommand(strSQL, conn);

            return (cmd.ExecuteScalar());
        }
        finally
        {
            if (conn.State == ConnectionState.Open)
                conn.Close();
        }


    }













}
