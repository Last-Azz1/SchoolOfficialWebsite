<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" Title="无标题页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="target-densitydpi=device-dpi,width=device-width initial-scale=0.3">
    <title>厦门软件职业技术学院</title>
    <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-grid.min.css"/>
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/imgStyle.css">
    <script src="js/jquery.min.js" type="text/javascript"></script>

</head>
<body>
<!--//轮播图-->
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img src="images/教学楼（局部）.jpg" alt="...">
        </div>
        <div class="item">
            <img src="images/教学楼（全景）.JPG" alt="...">
        </div>
        <div class="item">
            <img src="images/全景.jpg" alt="...">
        </div>
    </div>

    <!-- Controls -->
    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<!--//轮播图结束-->
<div class="mod01">
    <ul class="imgCenter">
        <li class="img">

            <div class="box">
                <img src="images/dsa.jpg" alt="" width="183" height="150">
                <div class="box-content">
                    <div class="content">
                        <span class="post">瑰丽</span>
                        <h3 class="title">校园夕阳</h3>
                    </div>
                </div>
            </div>

        </li>
        <li class="img">
            <div class="box">
                <img src="images/食堂宿舍实训楼DSC02860.jpg" alt="" width="183" height="150">
                <div class="box-content">
                    <div class="content">
                        <span class="post">刻苦</span>
                        <h3 class="title">实训楼</h3>
                    </div>
                </div>
            </div>

        </li>
        <li class="img">
            <div class="box">
                <img src="images/全景.jpg" alt="" width="183" height="150">
                <div class="box-content">
                    <div class="content">
                        <span class="post">青春</span>
                        <h3 class="title">动漫版校园</h3>
                    </div>
                </div>
            </div>
        </li>
        <li class="img">
            <div class="box">
                <img src="images/xyyj.jpg" alt="" width="183" height="150">
                <div class="box-content">
                    <div class="content">
                        <span class="post">整洁</span>
                        <h3 class="title">校园一角</h3>
                    </div>
                </div>
            </div>
        </li>
        <li class="img">
            <div class="box">
                <img src="images/tsg.jpg" alt="" width="183" height="150">
                <div class="box-content">
                    <div class="content">
                        <span class="post">勤奋</span>
                        <h3 class="title">图书馆</h3>
                    </div>
                </div>
            </div>
        </li>
        <li class="img">
            <div class="box">
                <img src="images/教学楼（局部）.jpg" alt="" width="183" height="150">
                <div class="box-content">
                    <div class="content">
                        <span class="post">威严</span>
                        <h3 class="title">教学楼</h3>
                    </div>
                </div>
            </div>
        </li>
    </ul>
</div>
<div class="mod02">
    <div class="newsTitle">厦软新闻 NEWS+</div>
    <ul class="newsCenter">
        <li class="news">
            <div class="newsImg">
                <a href="news.aspx">
                    <img src="images/xw.jpg" alt="" width="274" height="200">
                </a>
                &nbsp;<div class="time">
                    <div class="timeMonth">Dec</div>
                    <div class="timeDay">20</div>
                </div>
            </div>
            <div class="news-txt">
                <div class="news-txtTitle">
                    <a class="news-txtTitleLink" href="news.aspx">中新网：厦门校企携手共建“一带一路”</a>
                </div>
                <p class="newsContent">&nbsp&nbsp&nbsp&nbsp 中新网厦门10月16日电 (记者 杨伏山) 福建省最大的软件实训基地——厦门软件职业技术学院...</p>
            </div>
        </li>
    </ul>
    <ul class="newsCenter">
        <li class="news">
            <div class="newsImg">
                <a href="news.aspx">
                    <img src="images/xw.jpg" alt="" width="274" height="200">
                </a>
                &nbsp;<div class="time">
                    <div class="timeMonth">Dec</div>
                    <div class="timeDay">20</div>
                </div>
            </div>
            <div class="news-txt">
                <div class="news-txtTitle">
                    <a class="news-txtTitleLink" href="news.aspx">中新网：厦门校企携手共建“一带一路”</a>
                </div>
                <p class="newsContent">&nbsp&nbsp&nbsp&nbsp 中新网厦门10月16日电 (记者 杨伏山) 福建省最大的软件实训基地——厦门软件职业技术学院...</p>
            </div>
        </li>
    </ul>
    <ul class="newsCenter">
        <li class="news">
            <div class="newsImg">
                <a href="news.aspx">
                    <img src="images/xw.jpg" alt="" width="274" height="200">
                </a>
                &nbsp;<div class="time">
                    <div class="timeMonth">Dec</div>
                    <div class="timeDay">20</div>
                </div>
            </div>
            <div class="news-txt">
                <div class="news-txtTitle">
                    <a class="news-txtTitleLink" href="news.aspx">中新网：厦门校企携手共建“一带一路”</a>
                </div>
                <p class="newsContent">&nbsp&nbsp&nbsp&nbsp 中新网厦门10月16日电 (记者 杨伏山) 福建省最大的软件实训基地——厦门软件职业技术学院...</p>
            </div>
        </li>
    </ul>
    <ul class="newsCenter">
        <li class="news">
            <div class="newsImg">
                <a href="news.aspx">
                    <img src="images/xw.jpg" alt="" width="274" height="200">
                </a>
                &nbsp;<div class="time">
                    <div class="timeMonth">Dec</div>
                    <div class="timeDay">20</div>
                </div>
            </div>
            <div class="news-txt">
                <div class="news-txtTitle">
                    <a class="news-txtTitleLink" href="news.aspx">中新网：厦门校企携手共建“一带一路”</a>
                </div>
                <p class="newsContent">&nbsp&nbsp&nbsp&nbsp 中新网厦门10月16日电 (记者 杨伏山) 福建省最大的软件实训基地——厦门软件职业技术学院...</p>
            </div>
        </li>
    </ul>
</div>
<div class="mod03BG">
    <div class="mod03">
        <div class="modTitle">公告通道+</div>
        <div class="notice">
            <div class="noticeTitleL">通知公告+</div>
            <a href="#" class="glyphicon glyphicon-th-list noticeTitleR"></a>
            <ul class="clear">
                <li class="listL">
                    <div class="noticeDate">
                        <h5 class="noticeWeek">星期五</h5>
                        <h5 class="noticeMonth">12-24</h5>
                    </div>
                    <div class="noticeContent">
                        <h5 class="noticeContentTitle"><a href="#">厦门软件职业技术学院关于机房物理安全整改项目的招标公告</a></h5>
                        <h5 class="noticeContentTxt"><a href="#"> 我院就机房物理安全整改项目进行公开招标，现将招标有关事宜公告如下...</a></h5>
                    </div>
                </li>
                <li class="listL">
                    <div class="noticeDate">
                        <h5 class="noticeWeek">星期五</h5>
                        <h5 class="noticeMonth">12-24</h5>
                    </div>
                    <div class="noticeContent">
                        <h5 class="noticeContentTitle"><a href="#">厦门软件职业技术学院关于机房物理安全整改项目的招标公告</a></h5>
                        <h5 class="noticeContentTxt"><a href="#"> 我院就机房物理安全整改项目进行公开招标，现将招标有关事宜公告如下...</a></h5>
                    </div>
                </li>
                <li class="listL">
                    <div class="noticeDate">
                        <h5 class="noticeWeek">星期五</h5>
                        <h5 class="noticeMonth">12-24</h5>
                    </div>
                    <div class="noticeContent">
                        <h5 class="noticeContentTitle"><a href="#">厦门软件职业技术学院关于机房物理安全整改项目的招标公告</a></h5>
                        <h5 class="noticeContentTxt"><a href="#"> 我院就机房物理安全整改项目进行公开招标，现将招标有关事宜公告如下...</a></h5>
                    </div>
                </li>
                <li class="listL">
                    <div class="noticeDate">
                        <h5 class="noticeWeek">星期五</h5>
                        <h5 class="noticeMonth">12-24</h5>
                    </div>
                    <div class="noticeContent">
                        <h5 class="noticeContentTitle"><a href="#">厦门软件职业技术学院关于机房物理安全整改项目的招标公告</a></h5>
                        <h5 class="noticeContentTxt"><a href="#"> 我院就机房物理安全整改项目进行公开招标，现将招标有关事宜公告如下...</a></h5>
                    </div>
                </li>

            </ul>
        </div>
        <div class="notice">
            <div class="noticeTitleL">学术报告+</div>
            <a href="#" class="glyphicon glyphicon-th-list noticeTitleR"></a>
            <ul class="clear">
                <li class="listL">
                    <div class="noticeNum">
                        <h3>01</h3>
                    </div>
                    <div class="noticeNumContent">
                        <h5 class="noticeContentTitle"><a href="#">英国南安普顿大学教育学院院长马丁·戴克教授受聘我校客座教授...</a></h5>
                        <h5 class="noticeContentTxt"><a href="#">时间:2018-12-24&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp主讲人:王汉民&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp来源:软工系</a>
                        </h5>
                    </div>
                </li>
                <li class="listL">
                    <div class="noticeNum">
                        <h3>02</h3>
                    </div>
                    <div class="noticeNumContent">
                        <h5 class="noticeContentTitle"><a href="#">英国南安普顿大学教育学院院长马丁·戴克教授受聘我校客座教授...</a></h5>
                        <h5 class="noticeContentTxt"><a href="#">时间:2018-12-24&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp主讲人:王汉民&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp来源:软工系</a>
                        </h5>
                    </div>
                </li>
                <li class="listL">
                    <div class="noticeNum">
                        <h3>03</h3>
                    </div>
                    <div class="noticeNumContent">
                        <h5 class="noticeContentTitle"><a href="#">英国南安普顿大学教育学院院长马丁·戴克教授受聘我校客座教授...</a></h5>
                        <h5 class="noticeContentTxt"><a href="#">时间:2018-12-24&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp主讲人:王汉民&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp来源:软工系</a>
                        </h5>
                    </div>
                </li>
                <li class="listL">
                    <div class="noticeNum">
                        <h3>04</h3>
                    </div>
                    <div class="noticeNumContent">
                        <h5 class="noticeContentTitle"><a href="#">英国南安普顿大学教育学院院长马丁·戴克教授受聘我校客座教授...</a></h5>
                        <h5 class="noticeContentTxt"><a href="#">时间:2018-12-24&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp主讲人:王汉民&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp来源:软工系</a>
                        </h5>
                    </div>
                </li>

            </ul>
        </div>
    </div>
</div>
<div class="mod04">
    <div class="modTitle">快速通道+</div>
    <ul>
        <div class="quickIcon">
            <li><a href="#" class="glyphicon glyphicon-envelope icon"></a></li>
            <p class="iconTxt">邮件系统</p></div>
        <div class="quickIcon">
            <li><a href="#" class="glyphicon glyphicon-text-background icon"></a></li>
            <p class="iconTxt">OA系统</p></div>
        <div class="quickIcon">
            <li><a href="#" class="glyphicon glyphicon-yen icon"></a></li>
            <p class="iconTxt">缴费平台</p></div>
        <div class="quickIcon">
            <li><a href="#" class="glyphicon glyphicon-education icon"></a></li>
            <p class="iconTxt">人才引进</p></div>
        <div class="quickIcon">
            <li><a href="#" class="glyphicon glyphicon-blackboard icon"></a></li>
            <p class="iconTxt">教务系统</p></div>
        <div class="quickIcon">
            <li><a href="#" class="glyphicon glyphicon-credit-card icon"></a></li>
            <p class="iconTxt">学生资助</p></div>
        <div class="quickIcon">
            <li><a href="#" class="glyphicon glyphicon-comment icon"></a></li>
            <p class="iconTxt">易班</p></div>
        <div class="quickIcon">
            <li><a href="#" class="glyphicon glyphicon-bullhorn icon"></a></li>
            <p class="iconTxt">校园通知</p></div>
        <div class="quickIcon">
            <li><a href="#" class="glyphicon glyphicon-blackboard icon"></a></li>
            <p class="iconTxt">教学平台</p></div>
    </ul>
</div>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="lib/jquery/jquery-1.11.0.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="lib/bootstrap/js/bootstrap.min.js"></script>

<script src="js/mo.min.js"></script>
<script src="js/click.js"></script>

</body>
</asp:Content>

