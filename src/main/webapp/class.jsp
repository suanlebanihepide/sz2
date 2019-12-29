<%--
  Created by IntelliJ IDEA.
  User: shenzheng
  Date: 2019/12/1
  Time: 20:01
  该页面主要是化学小课堂的内容介绍
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>化学物质</title>
    <%--    导入Boostrap的相关CSS jQuery JS等文件--%>
    <link rel="stylesheet" href="/sz/css/bootstrap/css/bootstrap.min.css">
    <script src="/sz/css/bootstrap/js/jquery.min.js"></script>
    <script src="/sz/css/bootstrap/js/bootstrap.min.js"></script>
</head>
<body >
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
                    <a href="#" class="navbar-brand dropdown-toggle" role="button" aria-haspopup="true" data-toggle="dropdown">
                        化学物质 &nbsp&nbsp&nbsp&nbsp<span class="caret"></span> </a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="/sz/user/ditu" data-tab="tab-chrome"> <span style="font-size: 18px">化学有机物3D结构展示</span> </a></li>
                        <li><a href="/sz/user/ditu" data-tab="tab-firefox"><span style="font-size: 18px">化学物质展示</span></a></li>
                    </ul>
                </li>

                <li class="dropdown ">
                    <a href="class.jsp" class=" navbar-brand dropdown-toggle" role="button" aria-haspopup="true"
                       data-toggle="dropdown">
                        化学小课堂&nbsp&nbsp&nbsp&nbsp <span class="caret"></span></a>
                    <ul class="dropdown-menu  " role="menu">
                        <li><a href="/sz/user/show_qicai" data-tab="tab-chrome"><span style="font-size: 18px">化学器材展示</span></a></li>
                        <li><a href="/sz/user/exam" data-tab="tab-firefox"><span style="font-size: 18px">化学小测试</span></a></li>
                        <li><a href="/sz/user/share_knowledge" data-tab="tab-firefox"><span style="font-size: 18px">化学知识科普</span></a></li>
                        <li><a href="/sz/user/share_video" data-tab="tab-firefox"><span style="font-size: 18px">趣味分享</span></a></li>
                    </ul>
                </li>

                <li><a href="/sz/user/about" class="navbar-brand">关于我们&nbsp&nbsp&nbsp&nbsp</a></li>
            </ul>
        </div>
    </div>
</nav>

<%--设计项目开发化学小课堂内的四个模块的介绍界面，主要介绍四个模块的功能以及各模块进入链接--%>
<div style="background-color: rgb(249,249,249);">
<%--    化学小课堂内容以及样式--%>
    <div class="jumbotron" style=" height: 700px ;background-size: 100%;background-image: url(/sz/images/class_bgc.png);">
        <div class="lead lead">
            <div class="container">
                <br><br><br><br><br><br><br>
                <h1>  <span style="color: white">化学小课堂</span> </h1><br>
                <p STYLE="color: white;font-family: Algerian">欢迎来到这里希望你可以在这里学到许多有用的知识！</p>
            </div>
        </div>
    </div>
    <div class="text-center" >
        <br><br>
        <h1 style="font-weight: bold">我们的课堂</h1>
        <br><br><br>
    </div>
    <%--    测试屋内容以及样式--%>
    <div class=" container">
        <div class="pricing">
            <div class="col-md-6 col-sm-6 " id="bottoml">
                <div><img src="/sz/images/class_image/lambda.svg"></div>
                <br>
                <a href="/sz/user/exam" style="font-size: 40px;font-family: 'Algerian'">测试屋</a>
                <h2>这里你将会进行一系列的化学小测试从而提高你的知识水平，从而更好更快的超越别人拥有更多的化学知识</h2>
            </div>
            <div class="col-md-6 col-sm-6 ">
                <div><img src="/sz/images/class_image/encryption.svg"></div>
                <br>
                <a href="/sz/user/share_video" style="font-size: 40px">趣味分享</a>
                <h2>这里你将会进行了解到许许多多有趣的化学实验，以视频方式去学习如何操作并且亲眼看到其梦幻的实验效果</h2>
            </div>
        </div>
    </div>
    <br><br><br><br><br>
    <%--    化学知识科普内容以及样式--%>
    <div class="container">
        <div class="col-md-6 col-sm-6 " id="">
            <div><img src="/sz/images/class_image/federation.svg"></div>
            <a href="/sz/user/share_knowledge" style="font-size: 40px">化学知识科普</a>
            <h2>这里你将会进行一系列的化学小测试从而提高你的知识水平，从而更好更快的超越别人拥有更多的化学知识</h2>
        </div>
        <%--    化学器材展示以及样式--%>

        <div class="col-md-6 col-sm-6 " id="bottomr">
            <div><img src="/sz/images/class_image/identity.svg"></div>
            <a href="/sz/user/show_qicai" style="font-size: 40px">化学器材展示</a>
            <h2>这里你将会进行一系列的化学小测试从而提高你的知识水平，从而更好更快的超越别人拥有更多的化学知识</h2>
        </div>
    </div>
</div>
</body>
</html>
