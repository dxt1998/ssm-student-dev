<%--
  Created by IntelliJ IDEA.
  User: lonecloud
  Date: 2017/10/27
  Time: 上午12:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>登录界面</title>
    <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet">
</head>

<style>
    .col-center-block {
        float: none;
        display: block;
        margin-left: auto;
        margin-right: auto;
    }
</style>
</head>

<body>
<div class="container">
    <div class="row myCenter">
        <div class="col-xs-6 col-md-4 col-center-block">
            <form class="form-signin" method="post" action="${pageContext.request.contextPath}/user/doRegister">
                <h2 class="form-signin-heading ">注册${param.msg}</h2>
                <input type="hidden" name="location" id="location">
                <label for="username" class="sr-only">用户名</label>
                <input type="text" name="username" id="username" class="form-control" placeholder="用户名" required autofocus>
                <label for="inputPassword" class="sr-only">密码</label>
                <input type="password" id="pwd" name="password" class="form-control" placeholder="密码" required>
                <label for="rePassword" class="sr-only">密码</label>
                <input type="password" id="pwd1" name="rePassword" class="form-control" placeholder="确认密码" onkeyup="validate()" required><span id="tishi"></span>
                <div id="msg" class="hidden"></div>
                <div class="checkbox">
                    <a class="pull-right" href="${pageContext.request.contextPath}/user/login" id="register">登录</a>
                </div>
                <button class="btn btn-lg btn-primary btn-block" type="submit" id="submitForm">注册</button>
            </form>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/assets/js/jquery-2.1.4.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
<script>
function validate() {
    var pwd1 = document.getElementById("pwd").value;
    var pwd2 = document.getElementById("pwd1").value;
 
	/* <!-- 对比两次输入的密码 --> */
    if(pwd1 == pwd2)
     {
        document.getElementById("tishi").innerHTML="<font color='green'>两次密码相同</font>";
        document.getElementById("submitForm").disabled = false;
     }
else {
        document.getElementById("tishi").innerHTML="<font color='red'>两次密码不相同</font>";
        document.getElementById("submitForm").disabled = true;
     }
}
</script>
</body>
</html>



