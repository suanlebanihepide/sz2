<%--
  Created by IntelliJ IDEA.
  User: shenzheng
  Date: 2019/12/1
  Time: 18:40
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>化学妙妙屋</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <link rel="stylesheet" href="/sz/css/assets3/css/main.css"/>
    <noscript>
        <link rel="stylesheet" href="/sz/css/assets3/css/noscript.css"/>
    </noscript>
</head>
<body>
<header id="header">
    <div class="content">
        <h1>化学妙妙屋</h1>
        <p>在这里你可以自己动手做你想做的化学实验<br/>
            你可以学到许多新的化学知识 </p>
        <ul class="actions">
<%--            <li><a href="login.jsp" class="button primary icon solid fa-download">注册账号</a></li>--%>
            <li><a href="#one" class="button icon solid fa-chevron-down scrolly">了解更多</a></li>
        </ul>
    </div>
    <div class=" image phone">
        <div class="inner"><img src="/sz/images/welcome_background.gif" alt=""/>
        </div>
    </div>
</header>

<!-- One -->
<section id="one" class="wrapper style2 special">
    <header class="major">
        <h2>我们提供了功能？</h2>
    </header>
    <ul class="icons labeled">
        <li><span class="icon solid fa-image"><span class="label"></span></span></li>
        <li><span class="icon solid fa-video"><span class="label">  </span></span></li>
        <li><span class="icon solid fa-book"><span class="label">  </span></span></li>
        <li><span class="icon solid fa-desktop"><span class="label">  </span></span></li>
    </ul>
</section>

<!-- Two -->
<section id="two" class="wrapper">
    <div class="inner alt">
        <section class="spotlight">
            <div class="image"><img src="/sz/images/room.jpg" alt=""/></div>
            <div class="content">
                <h3>化学实验室</h3>
                <p>在这里你将会进入一个虚拟的实验室中，你可以随心所欲去做任何你想到的化学实验不会有任何的危险，亲身体会到动手做实验的快乐</p>
                <a href="/sz/user/lab" class="button">前往</a>
            </div>
        </section>
        <section class="spotlight">
            <div class="image"><img src="/sz/images/lesson_home.jpg" alt=""/></div>
            <div class="content">
                <h3>化学小课堂</h3>
                <p>在这里我们将为你提供有趣的化学故事，有趣的化学的反应，你还可以看到各种种类的化学器材和药品，以及能够不断提高你化学知识的小测验</p>
                <a href="/sz/user/class" class="button">前往</a>
            </div>
        </section>
        <section class="spotlight">
            <div class="image"><img src="/sz/images/wuzhi.gif" alt=""/></div>

            <div class="content">
                <h3>化学物质</h3>
                <p>在这里你可以通过3D的形式去查看化学有机物的构成，
                    去亲眼见识到一个化学有机分子的内部构成</p>
                <a href="/sz/user/ditu" class="button">前往</a>
            </div>
        </section>
        <section class="special">
            <ul class="icons labeled">
                <li><span class="icon solid fa-code"><span class="label"><a href="">联系我们</a></span></span></li>
                <li><span class="icon solid fa-desktop"><span class="label"> <a
                        href="about.jsp">关于我们</a> </span></span></li>
            </ul>
        </section>
    </div>
</section>


<footer id="footer">

    <div class="jumbotron text-center" style="margin-bottom:0">
        * 电　　话：021-888888(总机)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *传　　真：021-123456(总经办)<br>
        * 网　　址：http://www.888.cn*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 邮　　箱：mbp88888@163.com<br>
        * 地　　址：西安市杨凌区西农路&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*
        邮　　编：712000<br>
        * 营 销 部 ：021-65434(经理室)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*
        售后服务：021-65189<br/>
    </div>
</footer>

<!-- Scripts -->
<script src="/sz/css/assets3/js/jquery.min.js"></script>
<script src="/sz/css/assets3/js/jquery.scrolly.min.js"></script>
<script src="/sz/css/assets3/js/browser.min.js"></script>
<script src="/sz/css/assets3/js/breakpoints.min.js"></script>
<script src="/sz/css/assets3/js/util.js"></script>
<script src="/sz/css/assets3/js/main.js"></script>


</body>
</html>
