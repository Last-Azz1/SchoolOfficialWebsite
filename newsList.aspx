<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="newsList.aspx.cs" Inherits="newsList" Title="无标题页" %>
<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="target-densitydpi=device-dpi,width=device-width initial-scale=0.3" >

    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>厦门软件职业技术学院</title>

    <!-- Bootstrap -->
    <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
    <!--[if lt IE 9]>
    <script src="lib/html5shiv/html5shiv.min.js"></script>
    <script src="lib/respond/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="css/list.css">
</head>
<div class="news">
    <div class="title">
        <span>当前位置：<a href="index.aspx">首页</a>>厦软要闻</span>
    </div>
    <div class="newsTitle">
        <div id="form1" runat="server">
          <ul>
           <asp:Repeater ID="rptNews" runat="server">
                <ItemTemplate>
                <li class="listTitle"><span class="glyphicon glyphicon-play iconColor">&nbsp</span>[厦软要闻] <a href="NewsShow.aspx?id=<%# Eval("id") %>"><%# DbManager.GetStringNum( Eval("newsTitle").ToString(),15) %></a><span class="time"><%# Eval("newsTime","{0:yyyy-MM-dd}") %></span></li>
                </ItemTemplate>
           </asp:Repeater>
          </ul>
        </div>
     </div>
     <div class="pageBox">
        <webdiyer:AspNetPager ID="AspNetPager1" runat="server" AlwaysShow="True" CustomInfoStyle="FONT-SIZE: 12px"
                FirstPageText="首页" HorizontalAlign="Center" inputboxstyle="width:19px" LastPageText="尾页"
                meta:resourcekey="AspNetPager1" NextPageText="下一页" PageSize="10" PrevPageText="上一页"
                Style="font-size: 14px" Width="95%" CssClass="anpager" CurrentPageButtonClass="cpb"
                OnPageChanging="AspNetPager1_PageChanging" ShowBoxThreshold="10">
            </webdiyer:AspNetPager>
     </div>
</div>
</asp:Content>

