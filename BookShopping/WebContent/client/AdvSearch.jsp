<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
	<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" media="screen" />
	<title>心悦书城</title>
	<link rel="stylesheet" type="text/css" href="css/registerstyle.css">
	<link rel="stylesheet" type="text/css" href="css/top.css">
	<link rel="stylesheet" type="text/css" href="css/footer.css">
</head>
<body>
<!-- 头部 -->
<%@include file="top.jsp" %>
<!-- 头部End -->
<!-- main -->
<div class="main advmain">
	<div class="tranbg" >
		<div class="tran_nav">
			<h1 class="title">高级搜索</h1>
		</div>
		<div class="content">
			<form action="" method="post">
				<div class="form_list">
					<div class="form_item">
						<span>商品名称：</span>
						<input id="advsearch_ProductName" type="text" name="advsearch$ProductName">
					</div>
					<div class="form_item">
						<span>作者：</span>
						<input id="advsearch_Author" type="text" name="advsearch$Author">
					</div>
					<div class="form_item">
						<span>出版社：</span>
						<input id="advsearch_Publisher" type="text" name="advsearch$Publisher">
					</div>
					<div class="form_item">
						<span>出版/生产日期：</span>
						<input id="advsearch_calendarStartDate" type="text" name="advsearch$calendatStartDate">
						<span class="clear">至</span>
						<input id="advsearch_calendarEndDate" class="EndInput" type="text" name="advsearch$calendatEndDate">
					</div>
					<div class="form_item">
						<span>价格范围：</span>
						<input id="advsearch_StartPrice" type="text" name="advsearch$StartPrice">
						<span class="clear">至</span>
						<input id="advsearch_EndPrice" type="text" class="EndInput" name="advsearch$EndPrice">
					</div>
				</div>
				<div class="form_list">
					<div class="form_item">
						<input id="soushuo" class="btn" type="button" name="" value="搜索">
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