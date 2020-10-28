<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="addNews.aspx.cs" Inherits="addNews" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html>
<head id="Head1">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="target-densitydpi=device-dpi,width=device-width initial-scale=0.3">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>厦门软件职业技术学院</title>

    <!-- Bootstrap -->
    <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-grid.min.css"/>
    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
    <!--[if lt IE 9]>
    <script src="lib/html5shiv/html5shiv.min.js"></script>
    <script src="lib/respond/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="css/mode.css">
    <link rel="stylesheet" href="css/imgStyle.css">
    <script src="js/jquery.min.js" type="text/javascript"></script>

</head>
  <body>
  <script type="text/javascript">
        function getNowFormatDate() {
        var date = new Date();
        var seperator1 = "-";
        var seperator2 = ":";
        var month = date.getMonth() + 1;
        var strDate = date.getDate();
        if (month >= 1 && month <= 9) {
            month = "0" + month;
        }
        if (strDate >= 0 && strDate <= 9) {
            strDate = "0" + strDate;
        }
        var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
                + " " + date.getHours() + seperator2 + date.getMinutes()
                + seperator2 + date.getSeconds();
        return currentdate;
}
</script>

    <div class="container" style="width:1000px; height:700px; margin:0px auto;">

      <form class="form-signin">
        <h2 class="form-signin-heading">添加新闻</h2>
        <label for="inputEmail" class="sr-only">Email address</label>
        <asp:TextBox runat="server" type="email" id="newsTitle" class="form-control" placeholder="添加标题" required autofocus></asp:TextBox>
      <asp:TextBox runat="server" ID="TextBox1" runat="server" Wrap="true" TextMode="MultiLine" placeholder="添加内容"
            Height="210px" Width="970px" BorderColor="#CCCCCC" BorderWidth="1px"></asp:TextBox>
            <label for="inputEmail" class="sr-only">Email address</label>
        <asp:TextBox runat="server"  id="author" class="form-control" placeholder="添加作者" required autofocus></asp:TextBox>
        <asp:TextBox runat="server"  id="newsTime" class="form-control" placeholder="添加时间" required autofocus></asp:TextBox>
        <asp:button ID="Button1" runat="server" class="btn btn-lg btn-primary btn-block" 
            type="submit" Text="添加" onclick="Unnamed1_Click" Height="50px"/>
      </form>

    </div> <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
</asp:Content>

