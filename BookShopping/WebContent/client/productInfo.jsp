<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
	<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" media="screen">
	<title>商品信息</title>
	<link rel="stylesheet" type="text/css" href="css/top.css">
	<link rel="stylesheet" type="text/css" href="css/footer.css">
	<link rel="stylesheet" type="text/css" href="css/prostyle.css">
	<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="js/imageZoom.js"></script>
</head>
<body>
<!-- 头部 -->
<%@include file="top.jsp"%>
<!-- 头部End -->
<div class="main">
	<div class="nav_info"></div>
	<div class="cssleft">
		<div class="booklist">
			<p class="title">同类图书推荐</p>
			<ul>
				<li>
					<div class="pic"><a href=""><img class="img" src="images/5043602_160.jpg"></a></div>
					<div class="info">
						<h1 class="name"><a href="">山川岁月长</a></h1>
						<h1 class="author">蒋勋</h1>
						<h1 class="price"><b>￥49.80</b><em>￥50</em></h1>
					</div>
				</li>
				<li>
					<div class="pic"><a href=""><img class="img" src="images/5043602_160.jpg"></a></div>
					<div class="info">
						<h1 class="name"><a href="">山川岁月长</a></h1>
						<h1 class="author">蒋勋</h1>
						<h1 class="price"><b>￥49.80</b><em>￥50</em></h1>
					</div>
				</li>
				<li>
					<div class="pic"><a href=""><img class="img" src="images/5043602_160.jpg"></a></div>
					<div class="info">
						<h1 class="name"><a href="">山川岁月长</a></h1>
						<h1 class="author">蒋勋</h1>
						<h1 class="price"><b>￥49.80</b><em>￥50</em></h1>
					</div>
				</li>
				<li>
					<div class="pic"><a href=""><img class="img" src="images/5043602_160.jpg"></a></div>
					<div class="info">
						<h1 class="name"><a href="">山川岁月长</a></h1>
						<h1 class="author">蒋勋</h1>
						<h1 class="price"><b>￥49.80</b><em>￥50</em></h1>
					</div>
				</li>
				<li>
					<div class="pic"><a href=""><img class="img" src="images/5043602_160.jpg"></a></div>
					<div class="info">
						<h1 class="name"><a href="">山川岁月长</a></h1>
						<h1 class="author">蒋勋</h1>
						<h1 class="price"><b>￥49.80</b><em>￥50</em></h1>
					</div>
				</li>
			</ul>
		</div>
		<div></div>
	</div>
	<form id="form" action="${pageContext.request.contextPath}/purchase" method="post">
	<div class="content" id="con1">
		<div class="pro_intro">
			<div class="pro_view">
				<div class="zoomImg">
					<img class="img" data-imagezoom='true' src="images/5043602_500.jpg">
				</div>
				<div class="zoom_sm">
					<a href=""><img class="img" src="images/5043602_500.jpg"></a>
				</div>
				<div class="pro_share">
					<h2 style="float: left;">分享：</h2>
					<ul>
						<li><a href="" target="_blank">更多</a></li>
					</ul>
				</div>
			</div>
			
			<div class="pro_paramter">
				<div class="title">山川岁月长</div>
				<input type="hidden" value="山川岁月长" name="name">
				<div class="param">
					<p style="width: 365px;">商品编号：<span>755942028</span><input type="hidden" value="755942028" name="Id"></p>
					<p style="width: 365px;">线上售价：<span style="color:#cd0708;font-size:20px;">￥49.80</span></p>
					<p style="width: 365px;">定价：<span style="text-decoration:line-through;">￥50</span><input type="hidden" value="50" name="price"></p>
					<p>出版社：<span>江苏文艺</span></p>
					<p>出版日期：<span>2018-10</span></p>
					<p>作者：<span>蒋勋等著</span></p>
					<p>浏览次数：<span>450次</span></p>
					<p>版次：<span>第1版</span></p>
					<p>页数：<span>264</span></p>
				</div>
				<div>
					<h2>购买数量：</h2>
					<input id="pre_num" type="text" name="pre_num" value="1">
					<span class="add" onclick="changenum(this.className)">+</span>
					<span class="sub" onclick="changenum(this.className)">-</span>
				</div>
				<div class="btnc">
					<div class="addCart" onclick="dosubmit()"><img class="img" src="images/add_buttom_btn.jpg"></div>
					<div class="buy" onclick="alert('请微信添加13715075923')"><img class="img" src="images/mai_buttom_btn.jpg"></div>
				</div>
			</div>
		</div>
		<div></div>
		<div></div>
	</div>
	</form>
	<div class="content" id="con2">
		<ul class="pro_nav">
			<li class="li_active">图书库存情况</li>
		</ul>
		<div class="pro_mg">
			<ul>
				<li class="place">
					<em>书城1(13715075923)</em>
					<em><b>10</b></em>
					<em>3楼</em>
					<em>售价：<b>￥50</b></em>
				</li>
				<li class="place">
					<em>书城1(13715075923)</em>
					<em><b>10</b></em>
					<em>3楼</em>
					<em>售价：<b>￥50</b></em>
				</li>
				<li class="place">
					<em>书城1(13715075923)</em>
					<em><b>10</b></em>
					<em>3楼</em>
					<em>售价：<b>￥50</b></em>
				</li>
			</ul>
		</div>
	</div>
	<div class="content" id="con3">
		<ul class="pro_nav">
			<li class="li_active" onclick="changeShowMg(3,0);">商品详情</li>
			<li onclick="changeShowMg(3,1);">商品评论</li>
		</ul>
		<div class="pro_mg">
			<h3>内容简介</h3>
			<p style="text-indent: 26px;">收录华语百年名家散文，字里行间的人生真味，让时间长河里的经典绝响再度重生。 这是蒋勋、龙应台、林清玄等与一代人的对话，娓娓道出百年来岁月的沉淀与积累。回顾人生，这些人，那些事，几番出入，才发现深刻的记忆、强烈的情感，从不因时间而流损。 怀念过往，有我对生命的敬重，有我对此身所有一切的敬与爱。</p>
		</div>
		<div class="pro_mg" style="display: none;">
			<ul>
				<li class="comment">
					<em>用户1：</em>
					<em><b>好看！</b></em>
				</li>
				<li class="comment">
					<em>用户1：</em>
					<em><b>好看！</b></em>
				</li>
			</ul>
		</div>
	</div>
</div>
<!-- 尾部-->
<%@include file="foot.jsp"%>
<!-- 尾部End -->

<script type="text/javascript">
	function changeShowMg(n,m){
		var acon = document.getElementById('con'+n).getElementsByClassName('pro_mg'),
			ali = document.getElementById('con'+n).getElementsByClassName('pro_nav')[0].getElementsByTagName('li');
		for(var i=0;i<acon.length;i++){
			acon[i].style.display='none';
			ali[i].className='';
		}
		ali[m].className='li_active';
		acon[m].style.display='block';
	}
	function changenum(n){
		var num = document.getElementById('pre_num');
		if (n=="add") {
			num.value++;
		}else if(n=="sub"&&num.value>=0){
			num.value--;
		}
	}
	function dosubmit(){
		var form = document.getElementById('form');
		
		form.submit();
	}
</script>
</body>
</html>