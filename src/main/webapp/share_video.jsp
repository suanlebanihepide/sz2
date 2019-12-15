<%--
  Created by IntelliJ IDEA.
  User: shenzheng
  Date: 2019/12/11
  Time: 23:07
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>趣味分享</title>
    <link rel="stylesheet" href="/sz/css/bootstrap/css/bootstrap.min.css">
    <script src="/sz/css/bootstrap/js/jquery.min.js"></script>
    <script src="/sz/css/bootstrap/js/bootstrap.min.js"></script>
    <style>
        .row {
            margin-bottom: 20px;
        }

        .row .row {
            margin-top: 10px;
            margin-bottom: 0;
        }

        [class*="col-"] {
            padding-top: 15px;


        }
    </style>

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
                        <li><a href="test_page1.html" data-tab="tab-firefox"><span style="font-size: 18px">化学小测试</span></a></li>
                        <li><a href="/sz/user/share_knowledge" data-tab="tab-firefox"><span style="font-size: 18px">化学知识科普</span></a></li>
                        <li><a href="/sz/user/share_video" data-tab="tab-firefox"><span style="font-size: 18px">趣味分享</span></a></li>
                    </ul>
                </li>

                <li><a href="/sz/user/about" class="navbar-brand">关于我们&nbsp&nbsp&nbsp&nbsp</a></li>
            </ul>
        </div>
    </div>
</nav>

<br><br><br>
<div class="container  panel panel-default">
    <div class="panel-body">
        <div>
            <br>
            <h1>&nbsp;趣味分享</h1>
            <hr>
        </div>

        <ul style="list-style: none;">

            <li>
                <div class="row">

                    <div class="col-md-4">
                        <video width="300px" controls="controls">
                            <source src="/sz/video/1.mp4" type="video/mp4">
                        </video>

                    </div>

                    <div class="col-md-6 col-md-offset-2">
                        <h2>干冰实验</h2>
                        <br>
                        <span style="color:rgb(153,153,153); font-size: 20px; font-family: Arial ">干冰放水里会剧烈升华，产生大量二氧化碳。</span>

                    </div>

                </div>
                <hr>
            </li>

            <li>
                <div class="row">

                    <div class="col-md-4">
                        <video width="300px" controls="controls">
                            <source src="/sz/video/2.mp4" type="video/mp4">
                        </video>

                    </div>

                    <div class="col-md-6 col-md-offset-2">
                        <h2>柠檬小火山</h2>
                        <br>
                        <span style="color:rgb(153,153,153); font-size: 20px; font-family: Arial ">通过使用小苏打，柠檬，食用色素，勺子以及小刀等工具，经过一系列的步骤操作，从而
                    在你面前用柠檬来展示出一个小型火山的样貌。</span>

                    </div>

                </div>
                <hr>
            </li>

            <li>
                <div class="row">

                    <div class="col-md-4">
                        <video width="300px" controls="controls">
                            <source src="/sz/video/3.mp4" type="video/mp4">
                        </video>

                    </div>

                    <div class="col-md-6 col-md-offset-2">
                        <h2>召唤法老之蛇</h2>
                        <br>
                        <span style="color:rgb(153,153,153); font-size: 20px; font-family: Arial ">小苏打加热会迅速分解出大量二氧化碳，让糖燃烧时碳膨胀，形成多孔蓬松的黑色碳柱。</span>

                    </div>

                </div>
                <hr>
            </li>

            <li>
                <div class="row">

                    <div class="col-md-4">
                        <video width="300px" controls="controls">
                            <source src="/sz/video/4.mp4" type="video/mp4">
                        </video>

                    </div>
                    <div class="col-md-6 col-md-offset-2">
                        <h2>化学银钟</h2>
                        <br>
                        <span style="color:rgb(153,153,153); font-size: 20px; font-family: Arial ">产生碘酸银沉淀，又与焦亚硫酸钠反应产生黄色碘化银，碘化银分解产生的游离碘单质与淀粉反应变黑。</span>
                    </div>

                </div>
                <hr>
            </li>

            <li>
                <div class="row">

                    <div class="col-md-4">
                        <video width="300px" controls="controls">
                            <source src="/sz/video/5.mp4" type="video/mp4">
                        </video>

                    </div>
                    <div class="col-md-6 col-md-offset-2">
                        <h2>一滴见血小魔术</h2>
                        <br>
                        <span style="color:rgb(153,153,153); font-size: 20px; font-family: Arial ">三价铁离子与硫氰酸根离子反应得到红色硫氰化铁，加铁粉与三价铁离子中和为二价铁离子，红色消失，加氯水重新氧化为三价铁离子。。</span>
                    </div>

                </div>
                <hr>
            </li>

            <li>
                <div class="row">

                    <div class="col-md-4">
                        <video width="300px" controls="controls">
                            <source src="/sz/video/6.mp4" type="video/mp4">
                        </video>

                    </div>
                    <div class="col-md-6 col-md-offset-2">
                        <h2>化学海底世界</h2>
                        <br>
                        <span style="color:rgb(153,153,153); font-size: 20px; font-family: Arial ">酸钠与晶体反应</span>
                    </div>

                </div>
                <hr>
            </li>
        </ul>
    </div>
</div>

</body>
</html>
