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
<br><br>
<center>
<i class="ex2">
	<table border=1 width="80%" height="20px" style="background-color:white">
<tr>
  <td>航班号：</td>
  <td>${flight.flight_id}</td>
  </tr>
  <tr>
  <tr>
  <td>航空公司代号：</td>
  <td>${flight.c_comid}	</td>
  </tr>
  <tr>
  <td>客机编号：</td>
  <td>${flight.a_planeid}</td>
  </tr>
    <tr>
  <td>出发站：</td>
  <td>${flight.start_station}</td>
  </tr>
   <tr>
  <td>到达站：</td>
  <td>${flight.destn_station}</td>
  </tr>
  <tr>
  <tr>
  <td>日期：</td>
  <td>${flight.start_date}</td>
  </tr>
  <tr>
  <td>出发时间：</td>
  <td>${flight.start_time}</td>
  </tr>
    <tr>
  <td>到达时间：</td>
  <td>${flight.end_time}</td>
  </tr>
   <tr>
  <td>耗时：</td>
  <td>${flight.time_long}</td>
  </tr>
  <tr>
  <tr>
  <td>载客量：</td>
  <td>${flight.load_num}</td>
  </tr>
  <tr>
  <td>余票量：</td>
  <td>${flight.odd_num}</td>
  </tr>
    <tr>
  <td>票价：</td>
  <td>${flight.price}</td>
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