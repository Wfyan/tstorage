<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="cn.vo.User" %>
<%@ page import="cn.vo.Product" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div id="top">
	<div class="top_nav_bg">
		<div class="top_link">
			<div class="link_text">
				<span><% User user = (User) request.getSession().getAttribute("user");
				Product pro = (Product) request.getSession().getAttribute("cart");
					if(user!=null) %> ${user.username}</span>
					<span>您好，欢迎光临深圳书城！</span> <span class="purchase">您的购物车中有
					<span><% 
					if(user!=null) %> ${user.username}</span>件商品,合计
					<span id="purchase_cost">0.00</span>元
				</span>
				<a id="cart" href="shoppingCart.jsp">我的购物车</a> <a href="register.jsp">注册</a> <a href="login.jsp">登录</a>
				<% if(user!=null) {%><a href="${pageContext.request.contextPath}/logout">退出</a><% } %>
			</div>
		</div>
	</div>
	<div class="top_top">
		<div class="logo">
			<img class="img" src="images/logo.png">
		</div>
		<div class="search_tab">
			<div class="search">
				<input id="search_keyword" class="search_input" type="text"
					placeholder="商品名、作者、出版社、关键词"> <input id="search_submit"
					class="search_btn" type="button" value="搜索">
			</div>
			<div class="hot_key">
				<span>热门关键字：</span>
				<ul class="keywords" id=""></ul>
				<a class="advsearch" href="AdvSearch.jsp">高级搜索</a>
			</div>
		</div>
		<div class="appImg">
			<img class="img" src="images/appImg.jpg">
		</div>
	</div>
	<div class="nav_bg">
		<div class="nav">
			<div class="side_nav">
				<a href="" class='side_nav_a'>全部商品类</a>
			</div>
			<div class="main_nav">
				<ul>
					<li><a href="index.jsp">首页</a></li>
					<li><a href="#con2">儿童书籍</a></li>
					<li><a href="#con3">童趣专区</a></li>
					<li><a href="#con3">智能数码</a><img src="images/tip.png"></li>
				</ul>
			</div>
		</div>
	</div>
</div>