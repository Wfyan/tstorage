<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" media="screen" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>心悦书城</title>
	<link rel="stylesheet" type="text/css" href="css/top.css">
	<link rel="stylesheet" type="text/css" href="css/indexstyle.css">
	<link rel="stylesheet" type="text/css" href="css/footer.css">
</head>
<body>
<!-- 头部 -->
<%@include file="top.jsp" %>
<!-- 头部End -->
<!-- 中间内容 -->
<div class="main">
	<div class="carousel">
		<ol class="carousel_nav">
			<li class="li_active">1</li>
			<li>2</li>
			<li>3</li>
			<li>4</li>
		</ol>
		<ul class="carousel_inner" style="width: 4800px; margin-left: 0px;">
			<li class="car_item">
				<a href="productInfo.jsp"><img class="img" src="images/car_img1.jpg"></a>
			</li>
			<li class="car_item">
				<a href="productInfo.jsp"><img class="img" src="images/car_img2.jpg"></a>
			</li>
			<li class="car_item">
				<a href="productInfo.jsp"><img class="img" src="images/car_img3.jpg"></a>
			</li>
			<li class="car_item car_active">
				<a href="productInfo.jsp"><img class="img" src="images/car_img4.jpg"></a>
			</li>
		</ul>
		<div class="btn" id="pre" onmouseover="this.style.opacity='1.0'" onmouseout="this.style.opacity='0.4'"><i><</i></div>
		<div class="btn" id="next" onmouseover="this.style.opacity='1.0'" onmouseout="this.style.opacity='0.4'"><i>></i></div>
	</div>
	<!-- 广告 -->
	<%@include file="ad.jsp" %>
	<div class="combination" id="con1">
		<div class="combinationTab">
			<div class="tab_hd">
				<div class="tab_icon" style="width: 210px;">
					<span class="icon" style="width: 28px; height: 36px;"><img class="img" src="images/tab1.jpg"></span>
					<span class="title">新书速递</span>
				</div>
				<ul id="f1">
					<li class="active" onmouseover="tabShow(this);">最热</li>
				</ul>
				<div class="tab_r"><a href="">更多</a></div>
			</div>
			<div class="content">
				<ul>
					<li class="tab_item" onmouseover="this.className='tab_item active'" onmouseout="this.className='tab_item'">
						<div class="pic"><img class="img" src="images/5043602_160.jpg"></div>
						<div class="name"><a href="productInfo.jsp">山川岁月长</a></div>
						<div class="price">￥49.80</div>
					</li>
					<li class="tab_item" onmouseover="this.className='tab_item active'" onmouseout="this.className='tab_item'">
						<div class="pic"><img class="img" src="images/5073998_160.jpg"></div>
						<div class="name"><a href="">九州飘零书/商博良</a></div>
						<div class="price">￥43.00</div>
					</li>
					<li class="tab_item" onmouseover="this.className='tab_item active'" onmouseout="this.className='tab_item'">
						<div class="pic"><img class="img" src="images/5043602_160.jpg"></div>
						<div class="name"><a href="productInfo.jsp">山川岁月长</a></div>
						<div class="price">￥49.80</div>
					</li>
					<li class="tab_item" onmouseover="this.className='tab_item active'" onmouseout="this.className='tab_item'">
						<div class="pic"><img class="img" src="images/5073998_160.jpg"></div>
						<div class="name"><a href="">九州飘零书/商博良</a></div>
						<div class="price">￥43.00</div>
					</li>
					<li class="tab_item" onmouseover="this.className='tab_item active'" onmouseout="this.className='tab_item'">
						<div class="pic"><img class="img" src="images/5043602_160.jpg"></div>
						<div class="name"><a href="productInfo.jsp">山川岁月长</a></div>
						<div class="price">￥49.80</div>
					</li>
					<li class="tab_item" onmouseover="this.className='tab_item active'" onmouseout="this.className='tab_item'">
						<div class="pic"><img class="img" src="images/5073998_160.jpg"></div>
						<div class="name"><a href="">九州飘零书/商博良</a></div>
						<div class="price">￥43.00</div>
					</li>
					<li class="tab_item" onmouseover="this.className='tab_item active'" onmouseout="this.className='tab_item'">
						<div class="pic"><img class="img" src="images/5043602_160.jpg"></div>
						<div class="name"><a href="productInfo.jsp">山川岁月长</a></div>
						<div class="price">￥49.80</div>
					</li>
					<li class="tab_item" onmouseover="this.className='tab_item active'" onmouseout="this.className='tab_item'">
						<div class="pic"><img class="img" src="images/5073998_160.jpg"></div>
						<div class="name"><a href="">九州飘零书/商博良</a></div>
						<div class="price">￥43.00</div>
					</li>
				</ul>
			</div>
		</div>
		<div class="combination_r">
			<div class="titleTab">
				<ul id="chart">
					<li class="active" onmouseover="tabShow(this)">热销榜</li>
				</ul>
			</div>
			<div class="comRlist">
				<dl>
					<dt>
						<div class="icon" style="background: #e67225;">1</div>
						<div class="name"><a href="">简·爱</a><i>200</i></div>
					</dt>
					<dt>
						<div class="icon" style="background: #bf2c24;">2</div>
						<div class="name"><a href="">简·爱</a><i>200</i></div>
					</dt>
					<dt>
						<div class="icon" style="background: #e6bf25;">3</div>
						<div class="name"><a href="">简·爱</a><i>200</i></div>
					</dt>
					<dt>
						<div class="icon">4</div>
						<div class="name"><a href="">简·爱</a><i>200</i></div>
					</dt>
					<dt>
						<div class="icon">5</div>
						<div class="name"><a href="">简·爱</a><i>200</i></div>
					</dt>
				</dl>
			</div>
		</div>
	</div>
	<div class="combination" id="con2">
		<div class="combinationTab TabBig">
			<div class="tab_hd">
				<div class="tab_icon" style="width: 210px;">
					<span class="icon" style="width: 28px; height: 36px;"><img class="img" src="images/tab2.jpg"></span>
					<span class="title">精选图书</span>
				</div>
				<ul id="f2">
					<li class="active" onmouseover="tabShow(this);changeShowCon(2,0)">经典</li>
					<li onmouseover="tabShow(this);changeShowCon(2,1)">童书</li>
				</ul>
				<div class="tab_r"><a href="">更多</a></div>
			</div>
			<div class="content">
				<ul>
					<li class="item" onmouseover="this.className='item active'" onmouseout="this.className='item'">
						<div class="pic"><img class="img" src="images/5020249_270.jpg"></div>
						<div class="introduce">
							<h2><a href="">宋徽宗</a></h2>
							<p>作者：[美]伊沛霞</p>
							<div>线上售价：<span class="price" style="color: #c30;">¥118.00</span></div>
							<div class="in_brief"> 宋徽宗在位期间，中国几乎是世界上最先进的国家。在位二十多年间，这位极富艺术天赋的皇帝引领宋朝达到了文化上的鼎盛。不过，因为被女真人俘虏，最终死于异国他乡，宋徽宗更多的被后世认为是一个失败的皇帝，道德教...
							</div>
						</div>
					</li>
					<li class="item" onmouseover="this.className='item active'" onmouseout="this.className='item'">
						<div class="pic"><img class="img" src="images/5020249_270.jpg"></div>
						<div class="introduce">
							<h2><a href="">宋徽宗</a></h2>
							<p>作者：[美]伊沛霞</p>
							<div>线上售价：<span class="price" style="color: #c30;">¥118.00</span></div>
							<div class="in_brief"> 宋徽宗在位期间，中国几乎是世界上最先进的国家。在位二十多年间，这位极富艺术天赋的皇帝引领宋朝达到了文化上的鼎盛。不过，因为被女真人俘虏，最终死于异国他乡，宋徽宗更多的被后世认为是一个失败的皇帝，道德教...
							</div>
						</div>
					</li>					
					<li class="item" onmouseover="this.className='item active'" onmouseout="this.className='item'">
						<div class="pic"><img class="img" src="images/5020249_270.jpg"></div>
						<div class="introduce">
							<h2><a href="">宋徽宗</a></h2>
							<p>作者：[美]伊沛霞</p>
							<div>线上售价：<span class="price" style="color: #c30;">¥118.00</span></div>
							<div class="in_brief"> 宋徽宗在位期间，中国几乎是世界上最先进的国家。在位二十多年间，这位极富艺术天赋的皇帝引领宋朝达到了文化上的鼎盛。不过，因为被女真人俘虏，最终死于异国他乡，宋徽宗更多的被后世认为是一个失败的皇帝，道德教...
							</div>
						</div>
					</li>
				</ul>
			</div>
			<div class="content" style="display: none;">
				<ul>
					<li class="item" onmouseover="this.className='item active'" onmouseout="this.className='item'">
						<div class="pic"><img class="img" src="images/default.jpg"></div>
						<div class="introduce">
							<h2><a href="">正阳门下</a></h2>
							<p>作者：史雷</p>
							<div>线上售价：<span class="price" style="color: #c30;">¥25.00</span></div>
							<div class="in_brief"> 《正阳门下》内容接续《将军胡同》，仍然讲述居住在将军胡同的刘老爷子一家人的生活，以“我”——二宝与父母昆明避难回到北平开启故事。
  							<p style="text-indent: 14px;">故事背景设置在北平和平解放前夕，描摹出新中国成立前夜北平的生活图...</p>
							</div>
						</div>
					</li>
					<li class="item" onmouseover="this.className='item active'" onmouseout="this.className='item'">
						<div class="pic"><img class="img" src="images/default.jpg"></div>
						<div class="introduce">
							<h2><a href="">正阳门下</a></h2>
							<p>作者：史雷</p>
							<div>线上售价：<span class="price" style="color: #c30;">¥25.00</span></div>
							<div class="in_brief"> 《正阳门下》内容接续《将军胡同》，仍然讲述居住在将军胡同的刘老爷子一家人的生活，以“我”——二宝与父母昆明避难回到北平开启故事。
  							<p style="text-indent: 14px;">故事背景设置在北平和平解放前夕，描摹出新中国成立前夜北平的生活图...</p>
							</div>
						</div>
					</li>					
					<li class="item" onmouseover="this.className='item active'" onmouseout="this.className='item'">
						<div class="pic"><img class="img" src="images/default.jpg"></div>
						<div class="introduce">
							<h2><a href="">正阳门下</a></h2>
							<p>作者：史雷</p>
							<div>线上售价：<span class="price" style="color: #c30;">¥25.00</span></div>
							<div class="in_brief"> 《正阳门下》内容接续《将军胡同》，仍然讲述居住在将军胡同的刘老爷子一家人的生活，以“我”——二宝与父母昆明避难回到北平开启故事。
  							<p style="text-indent: 14px;">故事背景设置在北平和平解放前夕，描摹出新中国成立前夜北平的生活图...</p>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- 广告 -->
	<%@include file="ad.jsp" %>
	<div class="combination" id="con3">
		<div class="combinationTab TabBig">
			<div class="tab_hd">
				<div class="tab_icon" style="width: 210px;">
					<span class="icon" style="width: 28px; height: 36px;"><img class="img" src="images/tab3.jpg"></span>
					<span class="title">童趣专区</span>
				</div>
				<ul id="f2">
					<li class="active" onmouseover="tabShow(this);changeShowCon(3,0);">电子教育</li>
					<li onmouseover="tabShow(this);changeShowCon(3,1);">书包座椅</li>
					<li onmouseover="tabShow(this);changeShowCon(3,2);">儿童礼物</li>
				</ul>
				<div class="tab_r"><a href="">更多</a></div>
			</div>
			<div class="content">
				<ul>
					<li class="tab_item" onmouseover="this.className='tab_item active'" onmouseout="this.className='tab_item'">
						<div class="pic"><img class="img" src="images/180_949ec0aea8fc4777a673b8f08fee87bc.jpg"></div>
						<div class="name"><a href="">Sphero可编程机器人sprk+教育入门编程遥控机器球儿童益智玩具巨齿鲨同款</a></div>
						<div class="price">￥49.80</div>
					</li>					
					<li class="tab_item" onmouseover="this.className='tab_item active'" onmouseout="this.className='tab_item'">
						<div class="pic"><img class="img" src="images/180_1633f1c67845412c8375b12c824d60f8.jpg"></div>
						<div class="name"><a href="">程小奔 可编程益智机器人 Codey Rocky</a></div>
						<div class="price">￥49.80</div>
					</li>
					<li class="tab_item" onmouseover="this.className='tab_item active'" onmouseout="this.className='tab_item'">
						<div class="pic"><img class="img" src="images/180_bc7708ea6dff44a6960f8ec914a12682.jpg"></div>
						<div class="name"><a href="">Sphero BB-9E机器人Star Wars星球大战智能玩具手机APP遥控机器人</a></div>
						<div class="price">￥49.80</div>
					</li>
					<li class="tab_item" onmouseover="this.className='tab_item active'" onmouseout="this.className='tab_item'">
						<div class="pic"><img class="img" src="images/180_c944675f1b6e4d8c8885c5a14ef9c251.jpg"></div>
						<div class="name"><a href="">Sphero BB-8机器人 Star Wars星球大战智能手机APP遥控益智小球</a></div>
						<div class="price">￥49.80</div>
					</li>
					<li class="tab_item" onmouseover="this.className='tab_item active'" onmouseout="this.className='tab_item'">
						<div class="pic"><img class="img" src="images/180_949ec0aea8fc4777a673b8f08fee87bc.jpg"></div>
						<div class="name"><a href="">Sphero可编程机器人sprk+教育入门编程遥控机器球儿童益智玩具巨齿鲨同款</a></div>
						<div class="price">￥49.80</div>
					</li>
					<li class="tab_item" onmouseover="this.className='tab_item active'" onmouseout="this.className='tab_item'">
						<div class="pic"><img class="img" src="images/180_1633f1c67845412c8375b12c824d60f8.jpg"></div>
						<div class="name"><a href="">程小奔 可编程益智机器人 Codey Rocky</a></div>
						<div class="price">￥49.80</div>
					</li>
					<li class="tab_item" onmouseover="this.className='tab_item active'" onmouseout="this.className='tab_item'">
						<div class="pic"><img class="img" src="images/180_bc7708ea6dff44a6960f8ec914a12682.jpg"></div>
						<div class="name"><a href="">Sphero BB-9E机器人Star Wars星球大战智能玩具手机APP遥控机器人</a></div>
						<div class="price">￥49.80</div>
					</li>
					<li class="tab_item" onmouseover="this.className='tab_item active'" onmouseout="this.className='tab_item'">
						<div class="pic"><img class="img" src="images/180_c944675f1b6e4d8c8885c5a14ef9c251.jpg"></div>
						<div class="name"><a href="">Sphero BB-8机器人 Star Wars星球大战智能手机APP遥控益智小球</a></div>
						<div class="price">￥49.80</div>
					</li>
					<li class="tab_item" onmouseover="this.className='tab_item active'" onmouseout="this.className='tab_item'">
						<div class="pic"><img class="img" src="images/180_949ec0aea8fc4777a673b8f08fee87bc.jpg"></div>
						<div class="name"><a href="">Sphero可编程机器人sprk+教育入门编程遥控机器球儿童益智玩具巨齿鲨同款</a></div>
						<div class="price">￥49.80</div>
					</li>					
					<li class="tab_item" onmouseover="this.className='tab_item active'" onmouseout="this.className='tab_item'">
						<div class="pic"><img class="img" src="images/180_1633f1c67845412c8375b12c824d60f8.jpg"></div>
						<div class="name"><a href="">程小奔 可编程益智机器人 Codey Rocky</a></div>
						<div class="price">￥49.80</div>
					</li>
				</ul>
			</div>
			<div class="content" style="display: none;">
				<ul>
					<li class="tab_item" onmouseover="this.className='tab_item active'" onmouseout="this.className='tab_item'">
						<div class="pic"><img class="img" src="images/180_1ed9f577d2894ba7b392ccc0f7f0c8ae.jpg"></div>
						<div class="name"><a href="">乐客派 挑战者书包电脑包【包邮 深圳本地品牌发货 闪电到达】</a></div>
						<div class="price">￥49.80</div>
					</li>					
					<li class="tab_item" onmouseover="this.className='tab_item active'" onmouseout="this.className='tab_item'">
						<div class="pic"><img class="img" src="images/180_428c521bb2a24723a82008b5cb970683.jpg"></div>
						<div class="name"><a href="">乐客派 阳光小学生书包双肩背包【包邮 深圳本地品牌发货 闪电到达】</a></div>
						<div class="price">￥49.80</div>
					</li>						
					<li class="tab_item" onmouseover="this.className='tab_item active'" onmouseout="this.className='tab_item'">
						<div class="pic"><img class="img" src="images/180_bd114c087cb34edf80d854b6b02a1e88.jpg"></div>
						<div class="name"><a href="">乐客派 挑战者书包电脑包【包邮 深圳本地品牌发货 闪电到达】</a></div>
						<div class="price">￥49.80</div>
					</li>
					<li class="tab_item" onmouseover="this.className='tab_item active'" onmouseout="this.className='tab_item'">
						<div class="pic"><img class="img" src="images/180_1ed9f577d2894ba7b392ccc0f7f0c8ae.jpg"></div>
						<div class="name"><a href="">乐客派 挑战者书包电脑包【包邮 深圳本地品牌发货 闪电到达】</a></div>
						<div class="price">￥49.80</div>
					</li>					
					<li class="tab_item" onmouseover="this.className='tab_item active'" onmouseout="this.className='tab_item'">
						<div class="pic"><img class="img" src="images/180_428c521bb2a24723a82008b5cb970683.jpg"></div>
						<div class="name"><a href="">乐客派 阳光小学生书包双肩背包【包邮 深圳本地品牌发货 闪电到达】</a></div>
						<div class="price">￥49.80</div>
					</li>								
					<li class="tab_item" onmouseover="this.className='tab_item active'" onmouseout="this.className='tab_item'">
						<div class="pic"><img class="img" src="images/180_6ff257c22bbf427ab3eae34928c4c769.jpg"></div>
						<div class="name"><a href="">乐同贝贝网椅 儿童学习椅小孩电脑椅深度可多段调节学生升降学习椅子 台湾原装进口 WR-89</a></div>
						<div class="price">￥49.80</div>
					</li>
					<li class="tab_item" onmouseover="this.className='tab_item active'" onmouseout="this.className='tab_item'">
						<div class="pic"><img class="img" src="images/180_e08ca3a42ad24f99be971e3f71e46876.jpg"></div>
						<div class="name"><a href="">松木儿童学习桌椅【包邮 闪电发货】</a></div>
						<div class="price">￥49.80</div>
					</li>
					<li class="tab_item" onmouseover="this.className='tab_item active'" onmouseout="this.className='tab_item'">
						<div class="pic"><img class="img" src="images/180_6ff257c22bbf427ab3eae34928c4c769.jpg"></div>
						<div class="name"><a href="">乐同贝贝网椅 儿童学习椅小孩电脑椅深度可多段调节学生升降学习椅子 台湾原装进口 WR-89</a></div>
						<div class="price">￥49.80</div>
					</li>
					<li class="tab_item" onmouseover="this.className='tab_item active'" onmouseout="this.className='tab_item'">
						<div class="pic"><img class="img" src="images/180_e08ca3a42ad24f99be971e3f71e46876.jpg"></div>
						<div class="name"><a href="">松木儿童学习桌椅【包邮 闪电发货】</a></div>
						<div class="price">￥49.80</div>
					</li>
					<li class="tab_item" onmouseover="this.className='tab_item active'" onmouseout="this.className='tab_item'">
						<div class="pic"><img class="img" src="images/180_6ff257c22bbf427ab3eae34928c4c769.jpg"></div>
						<div class="name"><a href="">乐同贝贝网椅 儿童学习椅小孩电脑椅深度可多段调节学生升降学习椅子 台湾原装进口 WR-89</a></div>
						<div class="price">￥49.80</div>
					</li>
				</ul>
			</div>
			<div class="content" style="display: none;">
				<ul>
					<li class="tab_item" onmouseover="this.className='tab_item active'" onmouseout="this.className='tab_item'">
						<div class="pic"><img class="img" src="images/180_d0f0c50f704944c3b3be8c6fef896351.png"></div>
						<div class="name"><a href="">Helezu七彩安抚硅胶灯蛋壳小鸡</a></div>
						<div class="price">￥49.80</div>
					</li>					
					<li class="tab_item" onmouseover="this.className='tab_item active'" onmouseout="this.className='tab_item'">
						<div class="pic"><img class="img" src="images/180_e11f0ed3fde04642955d91d637fd2492.jpg"></div>
						<div class="name"><a href="">正品托马斯芭比防蚊手环儿童卡通驱蚊拍拍圈(户外防蚊手环) </a></div>
						<div class="price">￥49.80</div>
					</li>
					<li class="tab_item" onmouseover="this.className='tab_item active'" onmouseout="this.className='tab_item'">
						<div class="pic"><img class="img" src="images/180_d0f0c50f704944c3b3be8c6fef896351.png"></div>
						<div class="name"><a href="">Helezu七彩安抚硅胶灯蛋壳小鸡</a></div>
						<div class="price">￥49.80</div>
					</li>					
					<li class="tab_item" onmouseover="this.className='tab_item active'" onmouseout="this.className='tab_item'">
						<div class="pic"><img class="img" src="images/180_e11f0ed3fde04642955d91d637fd2492.jpg"></div>
						<div class="name"><a href="">正品托马斯芭比防蚊手环儿童卡通驱蚊拍拍圈(户外防蚊手环) </a></div>
						<div class="price">￥49.80</div>
					</li>
					<li class="tab_item" onmouseover="this.className='tab_item active'" onmouseout="this.className='tab_item'">
						<div class="pic"><img class="img" src="images/180_d0f0c50f704944c3b3be8c6fef896351.png"></div>
						<div class="name"><a href="">Helezu七彩安抚硅胶灯蛋壳小鸡</a></div>
						<div class="price">￥49.80</div>
					</li>					
					<li class="tab_item" onmouseover="this.className='tab_item active'" onmouseout="this.className='tab_item'">
						<div class="pic"><img class="img" src="images/180_e11f0ed3fde04642955d91d637fd2492.jpg"></div>
						<div class="name"><a href="">正品托马斯芭比防蚊手环儿童卡通驱蚊拍拍圈(户外防蚊手环) </a></div>
						<div class="price">￥49.80</div>
					</li>
					<li class="tab_item" onmouseover="this.className='tab_item active'" onmouseout="this.className='tab_item'">
						<div class="pic"><img class="img" src="images/180_d0f0c50f704944c3b3be8c6fef896351.png"></div>
						<div class="name"><a href="">Helezu七彩安抚硅胶灯蛋壳小鸡</a></div>
						<div class="price">￥49.80</div>
					</li>					
					<li class="tab_item" onmouseover="this.className='tab_item active'" onmouseout="this.className='tab_item'">
						<div class="pic"><img class="img" src="images/180_e11f0ed3fde04642955d91d637fd2492.jpg"></div>
						<div class="name"><a href="">正品托马斯芭比防蚊手环儿童卡通驱蚊拍拍圈(户外防蚊手环) </a></div>
						<div class="price">￥49.80</div>
					</li>						
				</ul>
			</div>
		</div>
	</div>
</div>
<div id="scrolltag">
	<div><a href="#top" style="color: #fff;font: normal 14px '微软雅黑';">回到顶部</a></div>
</div>
<!-- 底部 -->
<%@include file="foot.jsp" %>
<!-- 底部End -->
<script type="text/javascript">
	var acon = document.getElementsByClassName('combination');
	for(var i=1;i<=acon.length;i++){
		acon[i-1].id='con'+i;
	}
</script>
<script src="js/indexjs.js"></script>
</body>
</html>