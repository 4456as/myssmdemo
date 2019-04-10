<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>
<style type="text/css">
body {
	font-family: '微软雅黑';
	margin: 0 auto;
	min-width: 980px;
	font-size: 14px;
}

ul, li {
	display: block;
	margin: 0;
	padding: 0;
	list-style: none;
}

a, a:focus {
	text-decoration: none;
	color: #000;
	outline: none;
}

a:hover {
	color: #00a4ac;
	text-decoration: none;
}

.logintop {
	height: 47px;
	position: absolute;
	top: 0;
	background: url('images/loginbg1.png') repeat-x;
	z-index: 100;
	width: 100%;
}

.logintop span {
	color: #fff;
	line-height: 47px;
	text-indent: 24px;
	color: #afc5d2;
	float: left;
}

.logintop ul {
	float: right;
	padding-right: 30px;
}

.logintop ul li {
	float: left;
	margin-left: 20px;
	line-height: 47px;
}
.logintop ul li a {
	color: #afc5d2;
}
.logintop ul li a:hover {
	color: #fff;
}
.loginbody {
	width: 100%;
	height: 585px;
	overflow: hidden;
	position: absolute;
	top: 47px;
}

.systemlogo {
	background: url('images/logo.png') no-repeat center;
	width: 100%;
	height: 71px;
	margin-top: 75px;
}

.loginbox {
	width: 692px;
	height: 336px;
	background: url('images/logininfo.png') no-repeat;
	margin: 30px auto 0px;
}

.loginbox ul {
	margin: 88px 0px 0px 285px;
	padding-top: 80px;
}

.loginbox ul li {
	margin-bottom: 25px;
}

.loginbox ul li label {
	color: #687f92;
	padding-left: 25px;
}

.loginbox ul li label a {
	color: #687f92;
}

.loginbox ul li label a:hover {
	color: #3d96c9;
}

.loginbox ul li label input {
	margin-right: 5px;
}

.loginuser {
	width: 299px;
	height: 48px;
	background: url('images/loginuser.png') no-repeat;
	border: none;
	line-height: 48px;
	padding-left: 44px;
	font-size: 14px;
	font-weight: bold;
}

.loginpwd {
	width: 299px;
	height: 48px;
	background: url('images/loginpassword.png') no-repeat;
	border: none;
	line-height: 48px;
	padding-left: 44px;
	font-size: 14px;
	color: #90a2bc;
}

.loginbtn {
	width: 111px;
	height: 35px;
	background: url(images/buttonbg.png) no-repeat;
	font-size: 14px;
	font-weight: bold;
	color: #fff;
	cursor: pointer;
	line-height: 35px;
}

.loginbm {
	height: 50px;
	line-height: 50px;
	text-align: center;
	background: url(images/loginbg2.png) repeat-x;
	position: absolute;
	bottom: 0;
	width: 100%;
	color: #0b3a58;
}

.loginbm a:hover {
	color: #fff;
}

input {
	font-family: Tahoma, '微软雅黑', '宋体';
	border: none;
}
</style>

</head>

<body  
	style=" background-image: url(images/bgimg.png); background-size: 100% 100%;
	 ">
	<div class="logintop">
		<span>您好，欢迎登录</span>
		<ul>
			<li><a href="#">管理员登录</a></li>
			<li><form action="${pageContext.request.contextPath }/mlogin.action"method="POST">
			<input type="text" name="mid" value="管理号" size="5">&nbsp;
			<input type="text" name="mpas" value="口令" size="5">
			<input type="submit" value="进入" ></form>
			</li>
			<li>${mmsg}</li>
		</ul>
	</div>
	<div class="loginbody">
		<span class="systemlogo"></span>
		<div class="loginbox">
			<form action="${pageContext.request.contextPath }/login.action"
				method="POST">
				<ul>
					<li><input name="userid" type="text" class="loginuser"
						/></li>
					<li><input name="password" type="password" class="loginpwd"
						/></li>
					<li><input name="" type="submit" class="loginbtn" value="登录" />

						<label><a href="#">忘记密码？</a></label>${msg}</li>

				</ul>
			</form>
		</div>
	</div>
	<div class="loginbm">Copyright 2015-2020 版权所有</div>
</body>
</html>
