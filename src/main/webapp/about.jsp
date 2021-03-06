<%--
  Created by IntelliJ IDEA.
  User: shenzheng
  Date: 2019/12/1
  Time: 20:02
 该页面主要是对开发成员信息进行介绍，以及开发该项目所用的各项技术和框架信息
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>化学妙妙屋</title>
    <%--    导入Boostrap的相关CSS jQuery JS等文件--%>
    <link rel="stylesheet" href="/sz/css/bootstrap/css/bootstrap.min.css">
    <script src="/sz/css/bootstrap/js/jquery.min.js"></script>

    <script src="/sz/css/bootstrap/js/bootstrap.min.js"></script>
</head>
<%--为网页添加背景图片--%>
<body style="background-image: url(/sz/images/background.png)">
<%-- 加载网页界面中的导航条--%>
<nav class="navbar  navbar-inverse navbar-fixed-top">

    <div class="navbar-header">
        <a class="navbar-brand" href=""><span style="font-size: 25px">化学妙妙屋</span></a>
    </div>
    <div class="container">
        <div class="collapse navbar-collapse" id="navbar-menu">
            <ul class="nav navbar-nav ">

                <li><a href="/sz/user/home" class="navbar-brand">首页&nbsp&nbsp&nbsp&nbsp</a></li>
                <li>
                    <a href="/sz/user/lab" class="navbar-brand">化学实验室&nbsp&nbsp&nbsp&nbsp</a>
                </li>

                <li class="dropdown ">
                    <a href="#" class="navbar-brand dropdown-toggle" role="button" aria-haspopup="true"
                       data-toggle="dropdown">
                        化学物质 &nbsp&nbsp&nbsp&nbsp<span class="caret"></span> </a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="/sz/user/ditu" data-tab="tab-chrome"> <span
                                style="font-size: 18px">化学有机物3D结构展示</span> </a></li>
                        <li><a href="/sz/user/ditu" data-tab="tab-firefox"><span
                                style="font-size: 18px">化学物质展示</span></a></li>
                    </ul>
                </li>

                <li class="dropdown ">
                    <a href="class.jsp" class=" navbar-brand dropdown-toggle" role="button" aria-haspopup="true"
                       data-toggle="dropdown">
                        化学小课堂&nbsp&nbsp&nbsp&nbsp <span class="caret"></span></a>
                    <ul class="dropdown-menu  " role="menu">
                        <li><a href="/sz/user/show_qicai" data-tab="tab-chrome"><span
                                style="font-size: 18px">化学器材展示</span></a></li>
                        <li><a href="/sz/user/exam" data-tab="tab-firefox"><span
                                style="font-size: 18px">化学小测试</span></a></li>
                        <li><a href="/sz/user/share_knowledge" data-tab="tab-firefox"><span style="font-size: 18px">化学知识科普</span></a>
                        </li>
                        <li><a href="/sz/user/share_video" data-tab="tab-firefox"><span
                                style="font-size: 18px">趣味分享</span></a></li>
                    </ul>
                </li>

                <li><a href="/sz/user/about" class="navbar-brand">关于我们&nbsp&nbsp&nbsp&nbsp</a></li>
            </ul>
        </div>
    </div>
</nav>

<br><br><br>
<div class="container">
    <h2 class="text-center"><strong>关于我们</strong></h2>
    <div></div>
</div>
<br><br><br>
<%--设置网页中的轮播图，轮播内容为成员的相关介绍以及成员的个人头像图片信息--%>
<div class="center-block container">
    <div id="slidershow" class="carousel slide" data-ride="carousel" data-interval=2000 data-pause="hover"
         data-wrap="true" style="margin-top: 5rem; width: 50%;height: 50%; margin-left:auto; margin-right:auto;">
        <!-- 设置图片轮播的顺序 -->
        <ol class="carousel-indicators">
            <li class="active" data-target="#slidershow" data-slide-to="0"></li>
            <li data-target="#slidershow" data-slide-to="1"></li>
            <li data-target="#slidershow" data-slide-to="2"></li>
            <li data-target="#slidershow" data-slide-to="3"></li>
            <li data-target="#slidershow" data-slide-to="4"></li>
        </ol>
        <!--设置轮播的图片-->
        <div class="carousel-inner">
            <div class="item active center-block">
                <a href="##"><img class="img-circle text-center center-block" src="/sz/images/user/sz.jpg" alt="cat1"
                                  height="128px"></a>
                <div class="text-center">
                    <h2>经理--沈政</h2>
                    <p>主要负责:统筹全局，没人干的经理干，有人干的经理干</p>
                </div>

            </div>

            <div class="item">
                <a href="#"><img class="img-circle center-block" src="/sz/images/user/zkh.jpg" alt="cat2"></a>
                <div class="text-center">
                    <h2>打工仔--张康衡</h2>
                    <p>团队骨干，文档编辑，思路设计，结构设计</p>
                </div>
            </div>
            <div class="item">
                <a href="#"><img class="img-circle center-block" src="/sz/images/user/cxy2.jpg" alt="cat3"></a>
                <div class="text-center">
                    <h2>打工仔--陈新尧</h2>
                    <p>团队骨干，后端设计，网页3D展示实现</p>
                </div>
            </div>
            <div class="item">
                <a href="##"><img class="img-circle center-block" src="/sz/images/user/gjj.jpg" alt="cat4"></a>
                <div class="text-center">
                    <h2>打工仔--郭俊杰</h2>
                    <p>团队骨干，负责收集资料，界面设计，提供客户需求</p>
                </div>
            </div>

            <div class="item">
                <a href="##"><img class="img-circle center-block" src="/sz/images/user/ljq2.jpg" alt="cat5"></a>
                <div class="text-center">
                    <h2>打工仔--刘建强</h2>
                    <p>团队骨干，负责收集资料，后勤保障</p>
                </div>
            </div>
        </div>
    </div>

    <br><br><br><br><br>
    <%--    添加项目的开发信息例如网页开发使用了哪些技术，哪些框架
            添加项目开发人员的相关联系方式--%>
    <div class="row text-center">

        <div class=" col-sm-6 text-right ">
            <br><br>
            <img src="/sz/images/city.png" alt="" width="400">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <h1> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>化学&nbsp;&nbsp;&nbsp;&nbsp;</strong><br>
                <span><strong aria-setsize="32">妙妙屋&nbsp;&nbsp;&nbsp;</strong></span></h1>
            <h4> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;萤火虫Team&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4>
            <div class="addr scrollimation fade-right d2">
                <address>
                    陕西省咸阳市杨凌区萤火虫科技有限公司&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
                    <span class="hidden-xs">电话：</span><i class="fa fa-phone visible-xs-inline" aria-hidden="true"></i>+86-10-XXXXXXXX&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
                    <span class="hidden-xs">邮箱：</span>841502231@qq.com&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </address>
            </div>
        </div>
        <div class="text-left">
            <br><br><br><br>
            <h2>&nbsp;&nbsp;&nbsp;&nbsp;开发环境要求：</h2>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;HTML5</p>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CSS</p>
            <p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;JSP</p>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;JS</p>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;采用SSM框架进行开发</p>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;服务器配置 </p>

        </div>
    </div>
</div>

</body>
<footer>
    <div class="jumbotron text-center" style="margin-bottom:0px">
        * 电　　话：021-XXXXXX(总机)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*传　　真：021-XXXXXX<br>
        * 网　　址：http://www.888.cn*&nbsp;&nbsp;&nbsp; *邮　　箱：841502231@qq.com<br>
        * 地　　址：陕西省咸阳市杨凌区&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*
        邮　　编：712000<br>

    </div>

</footer>
</html>
