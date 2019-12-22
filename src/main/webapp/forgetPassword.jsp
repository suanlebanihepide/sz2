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
<div class="container col-md-offset-4">
    <h1>忘记密码</h1>
    <br><br>
    <div style="width: 300px">
        <form action="user/updateUser" method="post">

            <div class="form-group">
                <label >用户名:</label>
                <input type="text" id="u" class="form-control"  name="username" placeholder="请输入用户名">
            </div>
            <div class="form-group">
                <label >邮箱:</label>
                <input type="email" id="e1" class="form-control" onkeyup="checkEmail()" name="email" placeholder="请设置注册邮箱">
                <span id="tishi1"></span>
            </div>
            <div class="form-group">
                <label >密码:</label>
                <input type="password" id="p1" class="form-control" name="password" onkeyup="checkPassword()" placeholder="密码需包含字母和数字至少六位">
                <span id="tishi2"></span>
            </div>
            <div class="form-group">
                <label >确认密码:</label>
                <input type="password" id="p2" class="form-control" name="password2" onkeyup="checkpwd()"  placeholder="确保两次输入密码一致">
                <span id="tishi3"></span>
            </div>

            <div class="form-check">
                <label class="form-check-label">
                    <input class="form-check-input" type="checkbox"> 同意用户协议
                </label>
            </div>
            <button type="submit" id="submit" class="btn btn-primary" disabled="true">Submit</button>
        </form>
    </div>
</div>
<script>

        var flag1=0;
        var flag2=0;
        var flag3=0;
    function checkEmail() {
        var email = document.getElementById("e1");
        var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
        if (!myreg.test(email.value))
        {
            document.getElementById("tishi1").innerHTML = "<br><font color='red'>输入邮箱不合法</font>";
            flag1=0;
        }
        else
        {
            document.getElementById("tishi1").innerHTML = "<br><font color='green'>输入邮箱正确</font>";
            flag1=1;
        }
    }
    function checkPassword() {
        var pwd = document.getElementById("p1");
        var myreg =new RegExp('^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,10}$');
        if (!myreg.test(pwd.value))
        {
            document.getElementById("tishi2").innerHTML = "<br><font color='red'>输入密码不合法</font>";
            flag2=0;
        }
        else
        {
            document.getElementById("tishi2").innerHTML = "<br><font color='green'>输入密码有效</font>";
            flag2=1;
        }
    }

    function checkpwd() {
        var t1 = document.getElementById("p1").value;

        var t2 = document.getElementById("p2").value;
        ;
        if (t1 == t2) {
            document.getElementById("tishi3").innerHTML = "<br><font color='green'>两次密码输入一致</font>";
            flag3=1;
            if(flag1&&flag2&&flag3){
                document.getElementById("submit").disabled = false;
            }

        } else {
            document.getElementById("tishi3").innerHTML = "<br><font color='red'>两次输入密码不一致!</font>";
            flag3=0;
        }
    }

</script>


</body>
</html>
