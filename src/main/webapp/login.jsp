<%--
  Created by IntelliJ IDEA.
  User: shenzheng
  Date: 2019/12/1
  Time: 18:49
  登录界面
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>化学妙妙屋</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <%--    加载相关的CSS文件--%>
    <link rel="stylesheet" href="/sz/css/assets/css/main.css"/>
    <noscript>
        <link rel="stylesheet" href="/sz/css/assets/css/noscript.css"/>
    </noscript>
</head>
<body>


<div id="wrapper">

    <!-- Main -->
    <section id="main">
        <header>
            <span class="avatar"><img src="/sz/images/zkh.jpg" height="160"/></span>
            <h1>化学妙妙屋</h1>
        </header>
        <footer>
            <%--            提示用输入用户名和密码，当用的添加提交后，控制层根据提交的信息利用后台去查找数据库中的信息
                    若存在该用户名和密码记录则登录成功到后续页面否则在当前页面提示用户密码不正确--%>
            <form action="/sz/user/test" method="post">

                <div style="color: red">${error}</div>
                <div>Username: <label>
                    <input type="text" name="username">
                </label></div>
                <div>Password: <label>
                    <input type="password" name="password">
                </label></div>
                <div><a href="forgetPassword.jsp">忘记密码</a></div>
                <br><br>
                <input type="submit" value="登录">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="register.jsp">注册</a>
            </form>
        </footer>
    </section>

    <!-- Footer -->
    <footer id="footer">
        <ul class="copyright">
            <li>&copy; 萤火虫与皓月</li>
        </ul>
    </footer>

</div>

<!-- Scripts -->
<script>
    if ('addEventListener' in window) {
        window.addEventListener('load', function () {
            document.body.className = document.body.className.replace(/\bis-preload\b/, '');
        });
        document.body.className += (navigator.userAgent.match(/(MSIE|rv:11\.0)/) ? ' is-ie' : '');
    }
</script>

</body>
</html>
