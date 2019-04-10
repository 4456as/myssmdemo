<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {background-image:url("image/f1.jpg");background-size:1960px 960px;}
body {font:normal bold 36px/36px LiSu,sans-serif;color:black}
i.ex1{font:normal bold 36px/36px LiSu,sans-serif;text-decoration:none;}
i.ex2{font:normal bold 24px/24px LiSu,sans-serif;text-decoration:none;}
</style>
</head>
<body>
<br><br><center>
<i class="ex2">
	<table border=1 width="80%" height="20px" style="background-color:white">
<tr>
  <td>航空公司代号：</td>
  <td>${aircom.com_id}</td>
  </tr>
  <tr>
  <tr>
  <td>航空公司名：</td>
  <td>${aircom.com_name}</td>
  </tr>
  </table></i>
  <table align="center">
   <tr>
   <td><a href="${pageContext.request.contextPath}/main">返回主页</a>
   </td>
   </tr>
</table>
</center>
</body>
</html>