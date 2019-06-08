<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
	<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" media="screen" />
	<title>用户登录</title>
	<link rel="stylesheet" type="text/css" href="css/loginstyle.css">
	<link rel="stylesheet" type="text/css" href="css/top.css">
</head>
<body>
<!-- 头部 -->
<%@include file="top.jsp"%>
<!-- 头部End -->
<div class="main">
	<div class="loginImg">
		<a href="index.jsp"><img class="img" src="images/show.png"></a>
	</div>
	<div class="loginbg">
		<form action="${pageContext.request.contextPath}/login" method="post">
			<h1 class="title">用户登录</h1>
			<table border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td width="60" height="56">用户名：</td>
					<td colspan="2"><input type="text" id="loginUserName" name="username" placeholder="手机号/会员名/邮箱"></td>
				</tr>
				<tr>
					<td width="60" height="70">密码：</td>
					<td colspan="2"><input type="password" id="loginPassword" name="password"></td>
				</tr>
				<tr>
					<td height="56"></td>
					<td width="100"><input type="submit" class="btn" id="login_btnLogin" value="立即登录"></td>
					<td><a href="">忘记密码？</a></td>
				</tr>
			</table>
		</form>
		<div class="regis">
			<span class="title">还不是商城用户？</span>
			<p>一分钟轻松注册，就可以方便购物！</p><a href="register.jsp">免费注册</a>
		</div>
	</div>
</div>
<!-- 底部 -->

<!-- 底部End -->
<script src="https://passport.zhihuishu.com/assets/js/three/three.min.js"></script>
<script src="js/wallbgwave.js"></script>
</body>
</html>