<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>异常</title>
<link rel="stylesheet" type="text/css" href="css/error.css">
</head>
<body>
            <div class="error-main">
                <div class="label"></div>
                <div class="info">
                    <h3 class="title">啊哦，你所访问的页面不存在了。</h3>
                    <div class="reason">
                        <p>可能的原因：</p>
                        <p>1.在地址栏中输入了错误的地址。</p>
                    </div>
                    <div class="oper">
                        <p><a href="${pageContext.request.contextPath}/client/index.jsp">回到网站首页&gt;</a></p>
                    </div>
                </div>
            </div>
</body>
</html>