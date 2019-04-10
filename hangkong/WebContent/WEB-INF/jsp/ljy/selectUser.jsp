<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>条件查询用户</title>
 <style type="text/css">
           div{
            width: 200px;
            height: 200px;
            position: absolute;
            right: 900px;
            bottom: 700px;
        }
          body{font-size:24px;font-family:microsoft yahei;color: #F4A460;}
	      a{color:#F4A460;text-decoration:none}
	      input{width:300px;height:50px;font-size:24px;}
       </style>
<link rel="stylesheet" href="css/styles.css" />
</head>
<body style="background:url(images/11.jpg) ;background-size:cover;">
<div class="reg">
<form action="${pageContext.request.contextPath }/getuser1.do" method="post">
					输入id查询<br><input type="text" name = "user_id" value = "" placeholder="输入id查询">
					<br><br><input type="submit" value="查询">
				</form>
				<form action="${pageContext.request.contextPath }/getuser.do" method="post">
					输入用户名查询<br><input type="text" name = "user_name" value = "" placeholder="输入用户名查询">
					<input type="hidden" name = "name" placeholder="输入姓名模糊查询">
					<br><br><input type="submit" value="查询">
				</form>
				<form action="${pageContext.request.contextPath }/getuser.do" method="post">
					输入身份证号<br><input type="text" name = "ident_id" value = "" placeholder="输入身份证号">
					<input type="hidden" name = "name" placeholder="输入姓名模糊查询">
					<br><br><input type="submit" value="查询">
				</form>
				<form action="${pageContext.request.contextPath }/getuser.do" method="post">
					输入姓名模糊查询<br><input type="text" name = "name" value = "" placeholder="输入姓名模糊查询">
					<br><br><input type="submit" value="查询">
				</form>
	<a href="${pageContext.request.contextPath }/ManaHome">返回</a>	
</div>
</body>
</html>