<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员界面</title>
<link rel="stylesheet" href="css/styles.css" />
<style type="text/css">
  body{font-size:24px;font-family:microsoft yahei;color: #F4A460;}
	a{color:#F4A460;text-decoration:none}
	li{font-size:28px;font-weight:700;width:400px;height:80px}
</style>
</head>
<body style="background:url(images/10.jpg) ;background-size:cover;">
<div class="a">
<ul>
<li><a href="${pageContext.request.contextPath }/userlist.do">管理用户信息</a>
<li><a href="${pageContext.request.contextPath }/selectUser">查询用户信息</a>
<li><a href="${pageContext.request.contextPath }/main">航班管理</a>
<li><a href="${pageContext.request.contextPath }/toFindTicketPage">处理退票</a>
<li><a href="${pageContext.request.contextPath }/updateTicket">处理改签</a>
<li><a href="${pageContext.request.contextPath }/toHomePage">退出</a>
</ul>
</div>
</body>
</html>