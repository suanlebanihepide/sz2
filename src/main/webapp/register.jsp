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

<br><br><br><br><br><br>
<div class="container col-md-offset-4">
    <h1>新用户注册</h1>
    <br><br>
    <div style="width: 300px">
    <form action="user/createUser" method="post">

        <div class="form-group">
            <label >用户名:</label>
            <input type="text" class="form-control" id="uname" name="username" onkeyup="checkusername()" placeholder="请设置用户名">
            <span id="tishi"></span>
        </div>
        <div class="form-group">
            <label >邮箱:</label>
            <input type="email" class="form-control" id="e1" onkeyup="checkEmail()" name="email"  placeholder="请设置注册邮箱">
            <span id="tishi1"></span>
        </div>
        <div class="form-group">
            <label >密码:</label>
            <input type="password" class="form-control" id="pwd" name="password"  onkeyup="checkPassword()" placeholder="密码需包含字母和数字至少6位">
            <span id="tishi2"></span>
        </div>

        <div class="form-check">
            <label class="form-check-label">
                <input class="form-check-input" id="check" type="checkbox"> 同意用户协议
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
    function checkusername() {
        var t = document.getElementById("uname").value;
        $.ajax({
            type: "post",
            url: "/sz/user/check_username",
            datatype: "json",
            data: {"information": t},
            success: function (data) {
                if (data.toString() == "") {
                    document.getElementById("tishi").innerHTML = "<br><font color='green'>用户名可用</font>";
                    flag1=1;
                } else {
                    document.getElementById("tishi").innerHTML = "<br><font color='red'>用户名已经被使用</font>";
                    flag1=0;
                }
            }

        })
    }
    function checkEmail() {
        var email = document.getElementById("e1");
        var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
        if (!myreg.test(email.value))
        {
            document.getElementById("tishi1").innerHTML = "<br><font color='red'>输入邮箱不合法</font>";
            flag2=0;
        }
        else
        {
            document.getElementById("tishi1").innerHTML = "<br><font color='green'>输入邮箱正确</font>";
            flag2=1;
        }
    }

    function checkPassword() {
        var pwd = document.getElementById("pwd");
        var myreg =new RegExp('^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,10}$');
        if (!myreg.test(pwd.value))
        {
            document.getElementById("tishi2").innerHTML = "<br><font color='red'>输入密码不合法</font>";
            flag3=0;
        }
        else
        {
            document.getElementById("tishi2").innerHTML = "<br><font color='green'>输入密码有效</font>";
            flag3=1;
            if( flag1&&flag2&&flag3){
                document.getElementById("submit").disabled = false;
            }
        }
    }



</script>




</body>
</html>
