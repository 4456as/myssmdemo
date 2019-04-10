<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>main</title>
<style type="text/css">
body {background-image:url("image/f1.jpg");background-size:100% 100%;}
body {font:normal bold 36px/36px LiSu,sans-serif;color:black}
i.ex1{font:normal bold 36px/36px LiSu,sans-serif;text-decoration:none;}
i.ex2{font:normal bold 24px/24px LiSu,sans-serif;text-decoration:none;}
u.tt{padding: 0px;width:500px;height:200px;text-align:center;text-decoration:none;
display: table-cell;vertical-align:middle}
button {background-color: #FFFFFF;border: none;color: black;padding: 9px 18px;text-align: center;text-decoration: none;display: inline-block;font-size: 8px;margin: 4px 2px;-webkit-transition-duration: 0.4s; /* Safari */transition-duration: 0.4s;cursor: pointer;border-radius: 12px;}
.button1:hover {background-color: #555555;color: white;}
a{text-decoration:none}
fieldset {padding:10px;margin:100px;width:480px;height:1096px;color:red; border:#06c dashed 8px;background-color:white;}
</style>
</head>
<body>
<center>
<button class="button1"><i class="ex1"><a style="color:black" href="${pageContext.request.contextPath }/ManaHome">返回主管理菜单</a></i></button><br><br>

<fieldset>
航班管理：<br>
<button class="button1"><i class="ex1"><a href="${pageContext.request.contextPath }/selectFlight">查询航班</a></i></button><br>
<button class="button1"><i class="ex1"><a href="${pageContext.request.contextPath }/selectAirlinerByFlight1#">查询该航班的客机</a></i></button><br>
<button class="button1"><i class="ex1"><a href="${pageContext.request.contextPath }/selectAircomByFlight1">查询该航班的航空公司</a></i></button><br>
<button class="button1"><i class="ex1"><a href="${pageContext.request.contextPath }/insertFlight">新增航班</a></i></button><br>
<button class="button1"><i class="ex1"><a href="${pageContext.request.contextPath }/updateFlight">更新航班</a></i></button><br>
<button class="button1"><i class="ex1"><a href="${pageContext.request.contextPath }/deleteFlight">删除航班</a></i></button><br><br> 
航空公司管理： <br>                
<button class="button1"><i class="ex1"><a href="${pageContext.request.contextPath }/selectAircom">查询航空公司</a> </i></button><br>
<button class="button1"><i class="ex1"><a href="${pageContext.request.contextPath }/insertAircom">新增航空公司</a> </i></button><br>
<button class="button1"><i class="ex1"><a href="${pageContext.request.contextPath }/updateAircom">更新航空公司</a> </i></button><br>
<button class="button1"><i class="ex1"><a href="${pageContext.request.contextPath }/deleteAircom">删除航空公司</a> </i></button><br><br>
客机管理：<br>
<button class="button1"><i class="ex1"><a href="${pageContext.request.contextPath }/selectAirliner">查询客机</a> </i></button><br>				
<button class="button1"><i class="ex1"><a href="${pageContext.request.contextPath }/insertAirliner">新增客机</a> </i></button><br>			
<button class="button1"><i class="ex1"><a href="${pageContext.request.contextPath }/updateAirliner">更新客机</a> </i></button><br>
<button class="button1"><i class="ex1"><a href="${pageContext.request.contextPath }/deleteAirliner">删除客机</a> </i></button><br>               				
</fieldset>
</center>
<!-- 
<table width="500" height="100"  align="center">
<tr><td><a href="${pageContext.request.contextPath }/selectFlight">查询航班信息</a></td>
<td><a href="${pageContext.request.contextPath }/selectAircom">查询航空公司信息</a></td>
<td><a href="${pageContext.request.contextPath }/selectAirliner">查询客机信息</a></td></tr>
<tr><td><a href="${pageContext.request.contextPath }/insertFlight">新增航班信息</a></td>
<td><a href="${pageContext.request.contextPath }/insertAircom">新增航空公司信息</a></td>
<td><a href="${pageContext.request.contextPath }/insertAirliner">新增客机信息</a></td></tr>
<tr><td><a href="${pageContext.request.contextPath }/updateFlight">更新航班信息</a></td>
<td><a href="${pageContext.request.contextPath }/updateAircom">更新航空公司信息</a></td>
<td><a href="${pageContext.request.contextPath }/updateAirliner">更新客机信息</a></td></tr>
<tr><td><a href="${pageContext.request.contextPath }/deleteFlight">删除航班</a></td>
<td><a href="${pageContext.request.contextPath }/deleteAircom">删除航空公司</a></td>
<td><a href="${pageContext.request.contextPath }/deleteAirliner">删除客机</a></td></tr>
<tr><td><a href="${pageContext.request.contextPath }/selectAircomByFlight1">查询航班和航空公司信息</a></td>
<tr><td><a href="${pageContext.request.contextPath }/selectAirlinerByFlight1">查询航班和客机信息</a></td>
</tr>
</table>
 -->
        
</body>
</html>