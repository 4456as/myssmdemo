<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
      <style type="text/css">
           div{
            width: 200px;
            height: 200px;
            position: absolute;
            right: 1100px;
            bottom: 700px;
        }
        body{font-size:24px;font-family:microsoft yahei;color: #F4A460;}
	a{color:#F4A460;text-decoration:none}
         table{
        
        border:5px solid #e3e197;
        }
       </style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询用户</title>
</head>
 <body style="background:url(images/11.jpg) ;background-size:cover;">
<div>
<p style="font-size:20px">查询用户信息:</p>
	<table  border="2px" cellpadding="0" cellspacing="0" width="800px" height="300px">
		<tr>
			<th align="center">用户ID</th>
			<th align="center">用户名</th>
			<th align="center">身份证号</th>
			<th align="center">姓名</th>
			<th align="center">性别</th>
			<th align="center">年龄</th>
			<th align="center">手机号</th>
			<th align="center">账户</th>
		</tr>
		<c:forEach items="${userlist}" var="ul"> 
		<tr>
			<td align="center">${ul.user_id}</td>	
			<td align="center">${ul.user_name}</td>	
			<td align="center">${ul.ident_id}</td>	
			<td align="center">${ul.name}</td>	
			<td align="center">${ul.sex}</td>	
			<td align="center">${ul.age}</td>
			<td align="center">${ul.phone}</td>
			<td align="center">${ul.balance}</td>			
			<td align="center">
				<a href="${ul.user_id}/update.do">修改</a><br/>
				<a href="${ul.user_id}/delete.do" onclick="return confirm('是否删除')">删除</a><br/>
			</td>	
		</tr>
		</c:forEach>
		<tr>
			<td colspan="11" align="center"><a href="${pageContext.request.contextPath }/adduser.do">新增</a></td>
		</tr>
	</table>
	<a href="${pageContext.request.contextPath }/ManaHome">返回</a>
</div>
<a href="${pageContext.request.contextPath }/ManaHome">返回</a>
</body>
</html>