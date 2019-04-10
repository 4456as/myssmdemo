<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body style="background:url(image/sy002.jpg)">
	<script language="javascript">
		window.alert("打印成功，请查收您的机票。");
		window.location.href="${pageContext.request.contextPath }/outTicketPage";
	</script>
</body>
</html>