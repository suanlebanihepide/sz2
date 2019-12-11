<%--
  Created by IntelliJ IDEA.
  User: shenzheng
  Date: 2019/12/1
  Time: 18:49
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>化学妙妙屋</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
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
