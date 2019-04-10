<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加用户</title>
 <style type="text/css">
           div{
            width: 200px;
            height: 200px;
            position: absolute;
            right: 900px;
            bottom: 600px;
        }
        body{font-size:24px;font-family:microsoft yahei;color: #F4A460;}
	a{color:#F4A460;text-decoration:none}
       </style>
       <link rel="stylesheet" href="css/table1.css" />
</head>
<body style="background:url(images/11.jpg) ;background-size:cover;">
<div>
<p style="font-size:20px">添加用户信息:</p>
	<form action="${pageContext.request.contextPath }/doadduser.do"
		   method="post" id='formid'>
		<table class="bordered"  border=1>
			<tr>
			<td style="font-size:20px;">用户ID</td>
			<td>
				<input name="user_id" value="${u.user_id}" type="text" />
		      </td>
		      </tr>
		      <tr>
		      <td style="font-size:20px;">用户名</td>
			  <td>
				<input name="user_name" value="${u.user_name}" type="text" />
		      </td>
		      </tr>
		      <tr>
		      <td style="font-size:20px;">密码</td>
		      <td>
			  <input name="password" value="${u.ident_id}" type="text" />
			  </td>
			  </tr>
			  <tr>
			  <td style="font-size:20px;">身份证号</td>
			  <td>
			  <input name="ident_id" value="${u.ident_id}" type="text" />
			  </td>
			  </tr>
			  <tr>
			  <td style="font-size:20px;">姓名</td>
			  <td>
			  <input name="name" value="${u.name}" type="text" />
			  </td>
			  </tr>
			  <tr>
			  <td style="font-size:20px;">性别</td>
			  <td>
				<input name="sex" value="${u.sex}" type="text" />
			  </td>
			  </tr>
			  <tr>
			  <td style="font-size:20px;">年龄</td>
			  <td>
			  <input name="age" value="${u.age}" type="text" />
			  </td>
			  </tr>
			  <tr>
			  <td style="font-size:20px;">手机号</td>
			  <td>
			  <input name="phone" value="${u.phone}" type="text" />
			  </td>
			</tr>
		</table>
		<input type="submit" value="添加" />
</form>
	<a href="${pageContext.request.contextPath }/ManaHome">返回</a>
	</div>
</body>
</html>
