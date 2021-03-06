<%--
  Created by IntelliJ IDEA.
  User: shenzheng
  Date: 2019/12/15
  Time: 15:41
 该网页是项目的主要功能化学实验室，用户可以在该页面进行化学反应模拟，添加指定化学反应材料，查看反应现象 以及
 相关的化学反应方程式
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>化学实验室</title>
    <%--    导入Boostrap的相关CSS jQuery JS等文件--%>
    <link rel="stylesheet" href="/sz/css/bootstrap/css/bootstrap.min.css">


    <script src="/sz/css/bootstrap/js/jquery.min.js"></script>

    <script src="/sz/css/bootstrap/js/bootstrap.min.js"></script>
</head>
<%--为网页添加背景图片--%>
<body class="container" style="background-color: rgb(0,0,0)">
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
<br><br><br><br><br>
<div class="container">
<%--添加反应现象的预览动画界面，展现一个烧杯的样子--%>
    <div class="col-md-1 col-md-offset-0">
        <video id="video1" height="540px" width="660px" src="/sz/video/FeHcl.mp4">
        </video>
    </div>
    <div style="background-color: rgb(31,31,31)">
<%--        利用BootStrap的栅格系统在网页显示化学反应相关材料的列表点击按钮切换材料显示页面--%>
        <div class="col-md-2  col-md-offset-6 ">

            <table class="table-condensed">
                <tbody>
                <tr>
                    <td>
                        <a class="pic" href="javascript:playPause()" id="e1"><img alt="Fe" id="p1"
                                                                                  src="/sz/images/g/Au.png"
                                                                                  style="width: 100px"></a>
                    </td>
                    <td>
                        <a class="pic" href="javascript:playPause()" id="e2"><img alt="Fe" id="p2"
                                                                                  src="/sz/images/g/Ag.png"
                                                                                  style="width: 100px"></a>
                    </td>
                    <td>
                        <a class="pic" href="javascript:playPause()" id="e3"><img alt="Fe" id="p3"
                                                                                  src="/sz/images/g/Fe.png"
                                                                                  style="width: 100px"></a>
                    </td>

                </tr>
                <tr>
                    <td>
                        <a class="pic" href="javascript:playPause()" id="e4"><img alt="Fe" id="p4"
                                                                                  src="/sz/images/g/C.png"
                                                                                  style="width: 100px"></a>
                    </td>
                    <td>
                        <a class="pic" href="javascript:playPause()" id="e5"><img alt="Fe" id="p5"
                                                                                  src="/sz/images/g/CaCl2.png"
                                                                                  style="width: 100px"></a>
                    </td>
                    <td>
                        <a class="pic" href="javascript:playPause()" id="e6"><img alt="Fe" id="p6"
                                                                                  src="/sz/images/g/CaCO3.png"
                                                                                  style="width: 100px"></a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a class="pic" href="javascript:playPause()" id="e7"><img alt="Fe" id="p7"
                                                                                  src="/sz/images/g/CaSO4.png"
                                                                                  style="width: 100px"></a>
                    </td>
                    <td>
                        <a class="pic" href="javascript:playPause()" id="e8"><img alt="Fe" id="p8"
                                                                                  src="/sz/images/g/Cu(OH)2.png"
                                                                                  style="width: 100px"></a>
                    </td>
                    <td>
                        <a class="pic" href="javascript:playPause()" id="e9"><img alt="Fe" id="p9"
                                                                                  src="/sz/images/g/CuO.png"
                                                                                  style="width: 100px"></a>
                    </td>
                </tr>

                </tbody>

            </table>
            <div class="text-center">
                <a id="next1"><img class="img-circle" src="/sz/images/background.png" width="10px" alt=""></a>
                <a id="next2"><img class="img-circle" src="/sz/images/background.png" width="10px" alt=""></a>
                <a id="next3"><img class="img-circle" src="/sz/images/background.png" width="10px" alt=""></a>
                <button type="button" id="tt" onclick=fun()>确认材料</button>

            </div>
        </div>
    </div>
</div>

<div class="col-md-5">
    <img src="/sz/images/black.png" id="show" height="100px" alt="">
</div>


<script>
    var global = "";
    var flag = 1;
    //点击按钮后切换相关的材料的显示界面
    var f = document.getElementById("next1")
    f.onclick = function (ev) {
        flag = 1;
        document.getElementById("p1").src = "/sz/images/g/Au.png";
        document.getElementById("p2").src = "/sz/images/g/Ag.png";
        document.getElementById("p3").src = "/sz/images/g/Fe.png";
        document.getElementById("p4").src = "/sz/images/g/C.png";
        document.getElementById("p5").src = "/sz/images/g/CaCl2.png";
        document.getElementById("p6").src = "/sz/images/g/CaCO3.png";
        document.getElementById("p7").src = "/sz/images/g/CaSO4.png";
        document.getElementById("p8").src = "/sz/images/g/Cu(OH)2.png";
        document.getElementById("p9").src = "/sz/images/g/CuO.png";
    }
    var f2 = document.getElementById("next2")
    f2.onclick = function (ev) {
        flag = 2;
        document.getElementById("p1").src = "/sz/images/g/Mg.png";
        document.getElementById("p2").src = "/sz/images/g/Na.png";
        document.getElementById("p3").src = "/sz/images/g/S.png";
        document.getElementById("p4").src = "/sz/images/g/Si.png";
        document.getElementById("p5").src = "/sz/images/g/Zn.png";
        document.getElementById("p6").src = "/sz/images/g/Li.png";
        document.getElementById("p7").src = "/sz/images/g/FeCl3.png";
        document.getElementById("p8").src = "/sz/images/g/Fe2O3.png";
        document.getElementById("p9").src = "/sz/images/g/Ca.png";
    }
    var f3 = document.getElementById("next3")
    f3.onclick = function (ev) {
        flag = 3;
        document.getElementById("p1").src = "/sz/images/g/H2O.jpg";
        document.getElementById("p2").src = "/sz/images/g/H2O2.jpg";
        document.getElementById("p3").src = "/sz/images/g/H2SO3.jpg";
        document.getElementById("p4").src = "/sz/images/g/H2SO4.jpg";
        document.getElementById("p5").src = "/sz/images/g/HCl.jpg";
        document.getElementById("p6").src = "/sz/images/g/HNO3.jpg";
        document.getElementById("p7").src = "/sz/images/g/CH3COOH.jpg";
        document.getElementById("p8").src = "/sz/images/g/Ca.png";
        document.getElementById("p9").src = "/sz/images/g/BaSO4.png";
    }
    //利用jQuery为每一个反应材料的图片添加点击事件，点击触发相关事件
    var x = document.getElementsByClassName("pic");
    var i;
    for (i = 0; i < x.length; i++) {
        x[i].count = i;
        x[i].onclick = function (ev) {
            global += (flag.toString() + "-" + document.getElementsByClassName("pic")[this.count].id + " ");

        }

    }
    //当用户点击材料确认后，页面将会发送一个AJAX的异步请求，提交到后台，后台根据提交请求中用户提交材料的数据
    //去查询数据库中相关联的记录，若查询到该记录则返回反应现象和反应方程式相关的路径，若未查询到则返回null
    function fun() {

        var info = global.toString();
        $.ajax({
            type: "post",
            url: "/sz/user/aaa",
            datatype: "json",
            data: {"information": info},
            success: function (data) {


                if (data.toString() == "") {
                    alert("抱歉此项反应效果还没有开放，请等待后续开发")
                    global = ""
                } else {
                    document.getElementById("show").src = "/sz/images/result/" + data + ".png";
                    var myVideo = document.getElementsByTagName('video')[0];
                    document.getElementById("video1").src = "/sz/video/" + data + ".mp4";
                    myVideo.loop = "loop";
                    myVideo.play();
                    global = ""
                }
            }

        })
    }
    //点击相关材料页面中播放添加材料的相关动画
    function playPause() {
        var myVideo = document.getElementsByTagName('video')[0];
        if (flag == 3) {
            document.getElementById("video1").src = "/sz/video/liquid.mp4";
        } else {
            document.getElementById("video1").src = "/sz/video/chose.mp4";
        }
        myVideo.play();
    }
</script>

</body>
</html>
