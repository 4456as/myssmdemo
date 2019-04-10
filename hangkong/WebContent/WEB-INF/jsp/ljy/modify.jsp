<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人信息修改</title>
<style type="text/css">
           div{
            width: 200px;
            height: 200px;
            position: absolute;
            right: 1300px;
            bottom: 500px;
        }
        body{font-size:24px;font-family:microsoft yahei;color: #F4A460;}
	a{color:#F4A460;text-decoration:none}
	input{width:100px;height:50px;font-size:24px;}
       </style>
      
</head>
<body style="background:url(images/11.jpg) ;background-size:cover;">
<div style="margin:auto;">
<p style="font-size:20px">修改个人信息:</p>
<form action="${pageContext.request.contextPath }/updateUser"
		   method="post" id='formid'>
		<table width="50%" border=1>
			<tr>
			    <td>用户ID</td>
				<td>用户名</td>
				<td>身份证号</td>
				<td>姓名</td>
				<td>性别</td>
				<td>年龄</td>
				<td>手机号</td>
			</tr>
			<tr>
			<td>
				<input name="user_id" value="${u.user_id}" type="text" readonly/>
		      </td>
			  <td>
				<input name="user_name" value="${u.user_name}" type="text" />
		      </td>
			  <td>
			  <input name="ident_id" value="${u.ident_id}" type="text" />
			  </td>
			  <td>
			  <input name="name" value="${u.name}" type="text" />
			  </td>
			  <td>
				<input name="sex" value="${u.sex}" type="text" />
			  </td>
			  <td>
			  <input name="age" value="${u.age}" type="text" />
			  </td>
			  <td>
			  <input name="phone" value="${u.phone}" type="text" />
			  </td>
			</tr>
		</table>
		<input type="submit" value="修改" onclick="return confirm('是否修改')"/>
</form>
<a href="${pageContext.request.contextPath }/homePage">返回</a>
</div>
</body>
</html>