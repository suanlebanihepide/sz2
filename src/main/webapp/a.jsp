<%--
  Created by IntelliJ IDEA.
  User: shenzheng
  Date: 2019/12/17
  Time: 0:13
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/sz/css/bootstrap/css/bootstrap.min.css">


    <script src="/sz/css/bootstrap/js/jquery.min.js"></script>

    <script src="/sz/css/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<button type="button" onclick="fun()">请求数据</button>
<script>
    var t = document.getElementById("t");

    var person={name:"",sex:""}
    function fun() {
        $.ajax({
            type:"post",
            url:"/sz/user/aaa",
            datatype: "json",
            data:{"information":"e1 e2"},
            success:function(data){
            alert(data);
            }
    })
    }

</script>
</body>
</html>
