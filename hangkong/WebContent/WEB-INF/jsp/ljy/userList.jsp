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
        table{
          border:5px solid #9bdf70;
        }
       </style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户信息总览</title>
<script>
</script>
<link rel="stylesheet" href="css/table.css" />
</head>
 <body style="background:url(images/11.jpg) ;background-size:cover;">
<div>
	<table class="zebra"  cellpadding="0" cellspacing="0" width="800px" height="300px">
		<tr>
			<td colspan="11" align="center">
				<form action="${pageContext.request.contextPath }/getuser1.do" method="post">
					<input type="text" name = "user_id" value = "" placeholder="输入id查询">
					<input type="submit" value="查询">
				</form>
				<form action="${pageContext.request.contextPath }/getuser.do" method="post">
					<input type="text" name = "user_name" value = "" placeholder="输入用户名查询">
					<input type="hidden" name = "name" placeholder="输入姓名模糊查询">
					<input type="submit" value="查询">
				</form>
				<form action="${pageContext.request.contextPath }/getuser.do" method="post">
					<input type="text" name = "ident_id" value = "" placeholder="输入身份证号">
					<input type="hidden" name = "name" placeholder="输入姓名模糊查询">
					<input type="submit" value="查询">
				</form>
				<form action="${pageContext.request.contextPath }/getuser.do" method="post">
					<input type="text" name = "name" value = "" placeholder="输入姓名模糊查询">
					<input type="submit" value="查询">
				</form>
			</td>
		</tr>
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
			</td>
			<td>
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

</body>
</html>