<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body style="background:url(image/sy001.jpg)">
<form action="${pageContext.request.contextPath}/findUserByIdent">
身份证号：<input type="text" name="ident_id" placeholder="请输入身份证号" pattern="[0-9]{18}"
    title="只能是18位数字" required /><br/>
<input type="submit" name="submit" value="查询我的机票">
</form>
</body>
</html>