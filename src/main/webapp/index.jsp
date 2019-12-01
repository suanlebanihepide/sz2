<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2019/12/1
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
</head>
<body>
<a href="/account/findAll">ceshi</a>
<div></div>

<h3>测试保存</h3>
<form action="account/save" method="post">
    姓名：<input type="text" name="name"><br>
    金额 : <input type="text" name="money"><br>
    <input type="submit" value="保存"><br>
    
</form>
</body>
</html>
