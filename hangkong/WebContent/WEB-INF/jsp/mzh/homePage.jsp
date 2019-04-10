<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/selectFlight" method="post">
<table width="280" height="100"  align="center">
  <tr>
  <td>航班号：</td>
  <td><input name="flight_id" type="text" /></td>
  </tr>
  <tr>
   <tr>
  <td align="center"><input type="submit" value="查询"/></td>
  <td align="center"><input type="reset" value="取消"/></td>
  </tr>
  </table>
  
</form>
</body>
</html>