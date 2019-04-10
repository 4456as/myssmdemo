<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 	<link rel="stylesheet" href="css/reset.css" />
	<link rel="stylesheet" href="css/login.css" />
	<link rel="stylesheet" href="css/styles.css" />
<title>登录</title>
</head>
 <body style="background:url(images/11.jpg) ;background-size:cover;">
<div class="page">
<p style="font-size:40px">${msg}</p>
	<div class="loginwarrp">
		<div class="logo">用户登陆</div>
        <div class="login_form">
        <p style="font-size:20px">${msg}</p>
			<form id="Login" name="Login" method="post" action="${pageContext.request.contextPath }/login">
				<li class="login-item">
					<span>用户名：</span>
					<input type="text" id="user_id" name="user_id" class="login_input"  required>
                                        <span id="count-msg" class="error"></span>
				</li>
				<li class="login-item">
					<span>密　码：</span>
					<input type="password" id="password" name="password" class="login_input" required>
                                        <span id="password-msg" class="error"></span>
				</li>
				<li class="login-sub">
					<input type="submit" name="Submit" value="登录" />
                                        <input type="reset" name="Reset" value="重置" />
				</li>                      
           </form>
           	<br><a href="${pageContext.request.contextPath }/addUser">没有账号？点我注册</a>
		</div>
	</div>
</div>
</body>
</html>