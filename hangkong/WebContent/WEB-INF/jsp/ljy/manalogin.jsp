<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 	<link rel="stylesheet" href="css/reset.css" />
	<link rel="stylesheet" href="css/login.css" />
<title>管理员登录</title>
</head>
 <body style="background:url(images/11.jpg) ;background-size:cover;">
<p style="font-size:40px">${msg}</p>
<div class="page">
	<div class="loginwarrp">
		<div class="logo">管理员登陆</div>
        <div class="login_form">
        <p style="font-size:20px">${msg}</p>
			<form id="Login" name="Login" method="post" action="${pageContext.request.contextPath }/manalogin">
				<li class="login-item">
					<span>管理员id：</span>
					<input type="text" id="mana_id" name="mana_id" class="login_input"  required>
                                        <span id="count-msg" class="error"></span>
				</li>
				<li class="login-item">
					<span>口　令：</span>
					<input type="password" id="mana_pword" name="mana_pword" class="login_input" required>
                                        <span id="password-msg" class="error"></span>
				</li>
				<li class="login-sub">
					<input type="submit" name="Submit" value="登录" />
                                        <input type="reset" name="Reset" value="重置" />
				</li>                      
           </form>
		</div>
	</div>
</div>
</body>
</html>