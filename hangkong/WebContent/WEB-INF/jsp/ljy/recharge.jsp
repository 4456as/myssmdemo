<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>充值</title>
  <style type="text/css">
           div{
            width: 200px;
            height: 200px;
            position: absolute;
            right: 900px;
            bottom: 500px;
        }
         body{font-size:24px;font-family:microsoft yahei;color: #F4A460;}
	a{color:#F4A460;text-decoration:none}
	input{width:300px;height:50px;font-size:24px;}
       </style>
</head>
<body style="background:url(images/17.jpg) ;background-size:cover;">
<div>
<form action="${pageContext.request.contextPath }/balance"
		   method="post" id='formid'>
				<input type="hidden"  name="user_id" value="${u.user_id}" type="text" readonly/>
				账户余额：${u.balance}元<br><br>
				充值金额：<br>
				<input type="number"  name="balance" value=""  onkeyup="value=value.replace(/[^\d{1,}\.\d{1,}|\d{1,}]/g,'')"/>
<br><br><br>
		<input type="submit" value="充值" onclick="confirm('确认充值？')" />
</form>
<a href="${pageContext.request.contextPath }/homePage">返回</a>
</div>
</body>
</html>