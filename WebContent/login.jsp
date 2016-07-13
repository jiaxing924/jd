<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/base.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery-1.6.4.js"></script>
<title>京东-欢迎登录</title>
</head>
<body>
    <form action="user/userActionlogin.action" method="post">
        <input type="text" name="user.name"/>
        <input type="password" name="user.password"/>
        <input type="submit" value="登陆"/>
    </form>
</body>
</html>
