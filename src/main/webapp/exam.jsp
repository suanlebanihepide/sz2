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
<div class="container col-md-offset-2 col-md-8">
<form name="form" method="post" action="">
    <div id="first">
        <pre><img id="img1" src="/sz/images/test/page1_1.PNG"></pre><br>
        A&nbsp;&nbsp;<input name="answar_1" type="radio"  value="A">&nbsp;&nbsp;&nbsp;&nbsp;
        B&nbsp;&nbsp;<input name="answar_1" type="radio"   value="B">&nbsp;&nbsp;&nbsp;&nbsp;
        C&nbsp;&nbsp;<input name="answar_1" type="radio"  value="C">&nbsp;&nbsp;&nbsp;&nbsp;
        D&nbsp;&nbsp;<input name="answar_1" type="radio"  value="D">&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
    <div id ="second">
        <pre><img id="img2" src="/sz/images/test/page1_2.PNG"></pre><br>
        A&nbsp;&nbsp;<input name="answar_2" type="radio" value="A">&nbsp;&nbsp;&nbsp;&nbsp;
        B&nbsp;&nbsp;<input name="answar_2" type="radio" value="B">&nbsp;&nbsp;&nbsp;&nbsp;
        C&nbsp;&nbsp;<input name="answar_2" type="radio" value="C">&nbsp;&nbsp;&nbsp;&nbsp;
        D&nbsp;&nbsp;<input name="answar_2" type="radio" value="D">&nbsp;&nbsp;&nbsp;&nbsp;

    </div>
    <div id="thrid">
        <pre><img id="img3" src="/sz/images/test/page1_3.PNG" ></pre><br>
        A&nbsp;&nbsp;<input name="answar_3" type="radio" value="A">&nbsp;&nbsp;&nbsp;&nbsp;
        B&nbsp;&nbsp;<input name="answar_3" type="radio" value="B">&nbsp;&nbsp;&nbsp;&nbsp;
        C&nbsp;&nbsp;<input name="answar_3" type="radio" value="C">&nbsp;&nbsp;&nbsp;&nbsp;
        D&nbsp;&nbsp;<input name="answar_3" type="radio" value="D">&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
    <div id="fourth">
        <pre><img id="img4" src="/sz/images/test/page1_4.PNG" ></pre><br>
        A&nbsp;&nbsp;<input name="answar_3" type="radio" value="A">&nbsp;&nbsp;&nbsp;&nbsp;
        B&nbsp;&nbsp;<input name="answar_3" type="radio" value="B">&nbsp;&nbsp;&nbsp;&nbsp;
        C&nbsp;&nbsp;<input name="answar_3" type="radio" value="C">&nbsp;&nbsp;&nbsp;&nbsp;
        D&nbsp;&nbsp;<input name="answar_3" type="radio" value="D">&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
    <div id="fifth">
        <pre><img id="img5" src="/sz/images/test/page1_5.PNG" ></pre><br>
        A&nbsp;&nbsp;<input name="answar_3" type="radio" value="A">&nbsp;&nbsp;&nbsp;&nbsp;
        B&nbsp;&nbsp;<input name="answar_3" type="radio" value="B">&nbsp;&nbsp;&nbsp;&nbsp;
        C&nbsp;&nbsp;<input name="answar_3" type="radio" value="C">&nbsp;&nbsp;&nbsp;&nbsp;
        D&nbsp;&nbsp;<input name="answar_3" type="radio" value="D">&nbsp;&nbsp;&nbsp;&nbsp;
    </div>

</form>
    <span id="tishi"></span><br>
    <button onclick="return_answer()">查看参考答案</button>
<div id="page" class="text-center">
    <nav>
        <ul class="pagination">
            <li class="disabled"><a href="#">&laquo;</a></li>
            <li class="active"><a href="javascript:next1()">1</a></li>
            <li><a href="javascript:next2()">2</a></li>
            <li><a href="javascript:next3()">3</a></li>
            <li><a href="">&raquo;</a></li>
        </ul>
    </nav>
</div>
</div>

<script>
    var flag=1;
    function return_answer() {
        var str = flag.toString();
        $.ajax({
            type: "post",
            url: "/sz/user/return_answer",
            datatype: "json",
            data: {"information": str},
            success: function (data) {
                var str = data.toString();
                document.getElementById("tishi").innerHTML = "<br>"+str;
            }

        })

    }
   function next1 (ev) {
        flag = 1;
        document.getElementById("img1").src = "/sz/images/test/page1_1.PNG";
        document.getElementById("img2").src = "/sz/images/test/page1_2.PNG";
        document.getElementById("img3").src = "/sz/images/test/page1_3.PNG";
        document.getElementById("img4").src = "/sz/images/test/page1_4.PNG";
        document.getElementById("img5").src = "/sz/images/test/page1_5.PNG";
       document.getElementById("tishi").innerHTML = "";
    }
    function next2  (ev) {
        flag = 2;
        document.getElementById("img1").src = "/sz/images/test/page2_1.PNG";
        document.getElementById("img2").src = "/sz/images/test/page2_2.PNG";
        document.getElementById("img3").src = "/sz/images/test/page2_3.PNG";
        document.getElementById("img4").src = "/sz/images/test/page2_4.PNG";
        document.getElementById("img5").src = "/sz/images/test/page2_5.PNG";
        document.getElementById("tishi").innerHTML = "";
    }

    function next3  (ev) {
        flag = 3;
        document.getElementById("img1").src = "/sz/images/test/page3_1.PNG";
        document.getElementById("img2").src = "/sz/images/test/page3_2.PNG";
        document.getElementById("img3").src = "/sz/images/test/page3_3.PNG";
        document.getElementById("img4").src = "/sz/images/test/page3_4.PNG";
        document.getElementById("img5").src = "/sz/images/test/page3_5.PNG";
        document.getElementById("tishi").innerHTML = "";
    }




</script>

</body>
</html>
