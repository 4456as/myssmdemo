<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册</title>
<link rel="stylesheet" href="css/styles.css" />
<style type="text/css">
body{font-size:24px;font-family:microsoft yahei;color: #F4A460;}
	a{color:#F4A460;text-decoration:none}
	.inputstyle {width:100px;height:50px;font-size:24px;}
	</style>
</head>
<body style="background:url(images/11.jpg) ;background-size:cover;">
<div class="reg">
<form action="${pageContext.request.contextPath }/addUser"
		   method="post" id='formid'>
		<table align="center">
			<caption><font size="6">用户注册</font></caption>
		<tr>
			<td>用户id：</td>
			<td><input name="user_id" id="user_id" type="text"  placeholder="请输入用户id"/></td>	
		</tr>
		<tr>
			<td>用户名：</td>
			<td><input name="user_name" id="user_name" type="text"  placeholder="请输入用户名"/></td>	
		</tr>
		<tr>
			<td>设置密码：</td>
			<td><input name="password" id="password" type="password"  placeholder="请输入密码"/></td>	
		</tr>
		<tr>
			<td></td>
			<td><font size="2">6-20个字符，由字母、数字和符号组成</font></td>
		</tr><br />
		<tr>
			<td>确认密码：</td>
			<td><input id="password" type="password"  placeholder="请输入密码"/></td>	
		</tr>
		<tr>
			<td>真实姓名：</td>
			<td><input name="name" id="name" type="text"  placeholder="请输入真实姓名" onkeyup="value=value.replace(/[\d]/g,'') "/></td>	
		</tr>
		<tr>
			<td>身份证号：</td>
			<td><input name="ident_id" id="ident_id" type="text"  placeholder="请输入身份证号" onkeyup="value=value.replace(/[^\d{1,}\X\d{1,}|\d{1,}]/g,'')"/></td>	
		</tr>
		<tr>
			<td>性别：</td>
			<td><input name="sex" id="man" type="radio" value="男"checked="checked" />男
				<input naem="sex" id="woman" type="radio" value="女"/>女</td>	
		</tr>
		<tr>
			<td>年龄：</td>
			<td><input name="age" id="age" type="text"  placeholder="请输入年龄" onkeyup="value=value.replace(/[^\d]/g,'')"/></td>	
		</tr>
		<tr>
			<td>手机号：</td>
			<td><input name="phone" id="phone" type="text"  placeholder="请输入手机号" onkeyup="value=value.replace(/[^\d{1,}\-\d{1,}|\d{1,}]/g,'')"/></td>	
		</tr>
		<tr><td></td>
		<td>
		<input class="inputstyle" type="submit" value="注册"/>
		</td>
		</tr>
		<tr><td></td>
		<td>
		<a href="${pageContext.request.contextPath }/in">返回</a>
		</td>
		</tr>
		</table>
</form>
</div>
</body>
</html>