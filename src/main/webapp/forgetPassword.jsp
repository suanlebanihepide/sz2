<%--
  Created by IntelliJ IDEA.
  User: shenzheng
  Date: 2019/12/1
  Time: 18:51
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册</title>
    <link rel="stylesheet" href="./css/bootstrap/css/bootstrap.min.css">

    <script src="./css/bootstrap/js/jquery.min.js"></script>

    <script src="./css/bootstrap/js/bootstrap.min.js"></script>
    <style>
        label{
            font-size: 20px;
        }

    </style>
</head>
<body style="background-image: url(./images/background.png)">
<nav class="navbar  navbar-inverse navbar-fixed-top">

    <div class="navbar-header">
        <a class="navbar-brand" href=""><span style="font-size: 25px">化学妙妙屋</span></a>
    </div>
    <div class="container">
        <div class="collapse navbar-collapse" id="navbar-menu">
            <ul class="nav navbar-nav ">

                <li><a href="home.jsp" class="navbar-brand">首页&nbsp&nbsp&nbsp&nbsp</a></li>
                <li>
                    <a href="#" class="navbar-brand">化学实验室&nbsp&nbsp&nbsp&nbsp</a>
                </li>

                <li class="dropdown ">
                    <a href="#" class="navbar-brand dropdown-toggle" role="button" aria-haspopup="true" data-toggle="dropdown">
                        化学物质 &nbsp&nbsp&nbsp&nbsp<span class="caret"></span> </a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="index.html" data-tab="tab-chrome"> <span style="font-size: 18px">化学有机物3D结构展示</span> </a></li>
                        <li><a href="index.html" data-tab="tab-firefox"><span style="font-size: 18px">化学物质展示</span></a></li>
                    </ul>
                </li>

                <li class="dropdown ">
                    <a href="" class=" navbar-brand dropdown-toggle" role="button" aria-haspopup="true"
                       data-toggle="dropdown">
                        化学小课堂&nbsp&nbsp&nbsp&nbsp <span class="caret"></span></a>
                    <ul class="dropdown-menu  " role="menu">
                        <li><a href="show_qicai.jsp" data-tab="tab-chrome"><span style="font-size: 18px">化学器材展示</span></a></li>
                        <li><a href="class.jsp" data-tab="tab-firefox"><span style="font-size: 18px">化学小测试</span></a></li>
                        <li><a href="knowledge.jsp" data-tab="tab-firefox"><span style="font-size: 18px">化学知识科普</span></a></li>
                        <li><a href="share_knowledge.jsp" data-tab="tab-firefox"><span style="font-size: 18px">趣味分享</span></a></li>
                        <li><a href="share_knowledge.jsp" data-tab="tab-firefox"><span style="font-size: 18px">化学小课堂</span></a></li>

                    </ul>
                </li>

                <li><a href="about.jsp" class="navbar-brand">关于我们&nbsp&nbsp&nbsp&nbsp</a></li>
            </ul>
        </div>
    </div>
</nav>
<br><br><br><br><br><br>
<div class="container ">
    <h1>新用户注册</h1>
    <br><br>
    <div style="width: 300px">
        <form action="user/createUser" method="post">


            <div class="form-group">
                <label >邮箱:</label>
                <input type="email" class="form-control" name="email" placeholder="请设置注册邮箱">
            </div>
            <div class="form-group">
                <label >密码:</label>
                <input type="password" class="form-control" name="password" placeholder="请输入登录密码">
            </div>
            <div class="form-group">
                <label >确认密码:</label>
                <input type="password" class="form-control" name="password" placeholder="请输入登录密码">
            </div>

            <div class="form-check">
                <label class="form-check-label">
                    <input class="form-check-input" type="checkbox"> 同意用户协议
                </label>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</div>


</body>
</html>
