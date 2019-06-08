<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
	<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" media="screen">
	<title>用户注册</title>
	<link rel="stylesheet" type="text/css" href="css/registerstyle.css">
	<link rel="stylesheet" type="text/css" href="css/top.css">
	<link rel="stylesheet" type="text/css" href="css/footer.css">
</head>
<body>
<!-- 头部 -->
<%@include file="top.jsp" %>
<!-- 头部End -->
<!-- main -->
<div class="main">
	<div class="tranbg">
		<div class="tran_nav">
			<ol>
				<li class="">
					<i>1</i>
					<span class="ts">设置用户名</span>
				</li>
				<li class="">
					<i>2</i>
					<span class="ts">填写账户信息</span>
				</li>
				<li class="">
					<i>3</i>
					<span class="ts">注册成功</span>
				</li>
				<li class="">
					<i>4</i>
					<span class="ts">开通智慧卡支付</span>
				</li>
			</ol>
		</div>
		<div class="content">
			<form action="" method="post">
				<div class="form_list">
					<div class="form_item">
						<span>验证码：</span>
						<input id="check" type="text" name="" placeholder="请输入验证码">
						<div class="check_box"><img class="img" src="${pageContext.request.contextPath}/check"></div>
					</div>
					<div class="form_item">
						<span>手机号：</span>
						<input id="phonenum" type="text" name="" placeholder="请输入你的手机号">
					</div>
				</div>
				<div class="form_list">
					<div class="form_item">
						<input id="phone_next" class="btn" type="button" name="" value="下一步">
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
<!-- 底部 -->
<%@include file="foot.jsp" %>
<!-- 底部End -->
</body>
</html>