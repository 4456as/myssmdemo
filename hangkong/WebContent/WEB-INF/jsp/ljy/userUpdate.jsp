<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
	input{width:170px;height:50px;font-size:24px;}
        table{
        
        border:5px solid #adcd3c;background:#f2fddb
        }
       </style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改用户信息</title>
<link rel="stylesheet" href="css/table.css" />
</head>
<body style="background:url(images/11.jpg);background-size:cover;">
<div >
<p style="font-size:20px">修改用户信息:</p>
	<form action="${pageContext.request.contextPath }/doupdate.do"
		   method="post" id='formid'>
		<table class="zebra" width="50%" height="200px" border=1>
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
	<a href="${pageContext.request.contextPath }/ManaHome">返回</a>
</div>
</body>
</html>
