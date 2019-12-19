<%--
  Created by IntelliJ IDEA.
  User: shenzheng
  Date: 2019/12/15
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试屋</title>
    <link rel="stylesheet" href="/sz/css/bootstrap/css/bootstrap.min.css">
    <script src="/sz/css/bootstrap/js/jquery.min.js"></script>

    <script src="/sz/css/bootstrap/js/bootstrap.min.js"></script>
</head>
<body style="background-image: url(/sz/images/background.png)">
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
<br><br><br><br>
<div class="container">
<form name="form" method="post" action="">
    <div id="first">
        <pre><img src="/sz/images/test/page1_1.PNG"></pre><br>
        A&nbsp;&nbsp;<input name="answar_1" type="radio"  value="A">&nbsp;&nbsp;&nbsp;&nbsp;
        B&nbsp;&nbsp;<input name="answar_1" type="radio"   value="B">&nbsp;&nbsp;&nbsp;&nbsp;
        C&nbsp;&nbsp;<input name="answar_1" type="radio"  value="C">&nbsp;&nbsp;&nbsp;&nbsp;
        D&nbsp;&nbsp;<input name="answar_1" type="radio"  value="D">&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
    <div id ="second">
        <pre><img src="/sz/images/test/page1_2.PNG"></pre><br>
        A&nbsp;&nbsp;<input name="answar_2" type="radio" value="A">&nbsp;&nbsp;&nbsp;&nbsp;
        B&nbsp;&nbsp;<input name="answar_2" type="radio" value="B">&nbsp;&nbsp;&nbsp;&nbsp;
        C&nbsp;&nbsp;<input name="answar_2" type="radio" value="C">&nbsp;&nbsp;&nbsp;&nbsp;
        D&nbsp;&nbsp;<input name="answar_2" type="radio" value="D">&nbsp;&nbsp;&nbsp;&nbsp;

    </div>
    <div id="thrid">
        <pre><img src="/sz/images/test/page1_3.PNG" ></pre><br>
        A&nbsp;&nbsp;<input name="answar_3" type="radio" value="A">&nbsp;&nbsp;&nbsp;&nbsp;
        B&nbsp;&nbsp;<input name="answar_3" type="radio" value="B">&nbsp;&nbsp;&nbsp;&nbsp;
        C&nbsp;&nbsp;<input name="answar_3" type="radio" value="C">&nbsp;&nbsp;&nbsp;&nbsp;
        D&nbsp;&nbsp;<input name="answar_3" type="radio" value="D">&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
    <input type="button" value="查看参考答案" onclick=showAnswer()>
    <input type="button" name="Submit" value="提交" onclick="submit1()">
</form>
<div id="page">
    <nav>
        <ul class="pagination">
            <li class="disabled"><a href="#">&laquo;</a></li>
            <li class="active"><a href="test_page1.html">1</a></li>
            <li><a href="test_page2.html">2</a></li>
            <li><a href="test_page3.html">3</a></li>
            <li><a href="test_page4.html">4</a></li>
            <li><a href="test_page5.html">5</a></li>
            <li><a href="test_page2.html">&raquo;</a></li>
        </ul>
    </nav>
</div>
</div>


</body>
</html>
