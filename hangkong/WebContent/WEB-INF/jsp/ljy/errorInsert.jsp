<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script language="javascript">
alert("注册失败!用户ID或身份证号已注册,信息填写不正确,请输入正确信息哦");
window.location.href="${pageContext.request.contextPath }/in";
</script>
</body>
</html>