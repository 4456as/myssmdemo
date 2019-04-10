<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人信息管理界面</title>
	<link rel="stylesheet" href="css/styles.css" />
	<style type="text/css">
	body{font-size:24px;font-family:microsoft yahei;color: #F4A460;}
	a{color:#F4A460;text-decoration:none}
	li{font-size:28px;font-weight:700;width:400px;height:80px}
	</style>
</head>
<body style="background:url(images/11.jpg) ;background-size:cover;">
<h1>欢迎${loginuser.user_name}</h1>
<div class="a">
<ul>
<li><a href="${pageContext.request.contextPath }/query">查询个人信息</a>
<li><a href="${pageContext.request.contextPath }/modify">修改个人信息</a>
<li><a href="${pageContext.request.contextPath }/password">修改密码</a>
<li><a href="${pageContext.request.contextPath }/recharge">余额充值</a>
<li><a href="${pageContext.request.contextPath }/Order/userorder">个人订单操作</a>
<li><a href="${pageContext.request.contextPath }/toHomePage">返回</a>
</ul>
</div>
</body>
</html>