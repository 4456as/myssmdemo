<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人信息</title>
<style type="text/css">
           div{
            width: 400px;
            height: 200px;
            position: absolute;
            right: 1300px;
            bottom: 700px;
        }
	body{font-size:24px;font-family:microsoft yahei;color: #F4A460;}
	a{color:#F4A460;text-decoration:none}

       </style>
</head>
<body style="background:url(images/11.jpg) ;background-size:cover;">
<div>
	<h1>欢迎${loginuser.user_name}</h1>
	<table  border="1px" cellpadding="0" cellspacing="0" width="1000px" height="300px">
		<tr>
			<th align="center">用户ID</th>
			<th align="center">用户名</th>
			<th align="center">身份证号</th>
			<th align="center">姓名</th>
			<th align="center">性别</th>
			<th align="center">年龄</th>
			<th align="center">手机号</th>
			<th align="center">账户</th>
		</tr>
		<tr>
			<td align="center">${ul.user_id}</td>	
			<td align="center">${ul.user_name}</td>	
			<td align="center">${ul.ident_id}</td>	
			<td align="center">${ul.name}</td>	
			<td align="center">${ul.sex}</td>	
			<td align="center">${ul.age}</td>
			<td align="center">${ul.phone}</td>
			<td align="center">${ul.balance}</td>			
			<td align="center">
				<a href="${pageContext.request.contextPath }/modify">修改</a><br/>
			</td>	
		</tr>
	</table>
	<a href="${pageContext.request.contextPath }/homePage">返回</a>
</div>
</body>
</html>