<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>删除订单系统</title>
<style type="text/css">
body {background-image:url("image/f1.jpg");background-size:1960px 960px;}
body {font:normal bold 36px/36px LiSu,sans-serif;color:black}
i.ex1{font:normal bold 36px/36px LiSu,sans-serif;text-decoration:none;}
i.ex2{font:normal bold 24px/24px LiSu,sans-serif;text-decoration:none;}
</style>
 <body >
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
function delete1(ticket_id,o_orderid) {
    if(confirm('确实要删除该票单吗?')) {
$.post("<%=basePath%>deleteRefundTicket",{"ticket_id":ticket_id,"o_orderid":o_orderid},
function(data){
            if(data =="ok"){
                alert("票单删除成功！");
                window.location.reload();
            }else{
                alert("删除票单失败！");
                window.location.reload();
            }
        });
    }else{
    	alert("未操作");
    	window.loaction.reload();
    }
}

</script>
</head>
<body>
<center>
<a href="${pageContext.request.contextPath }/ManaHome" >返回主管理菜单</a>
<br><br><br><br><br><br><br><br>
<i class="ex2">
	<table border=1 width="80%" height="20px" style="background-color:white">

<tr>
<td>机票号</td>
<td>订单号</td>

<td>登机口</td>
<td>座号</td>
<td>登机时间</td>
</tr>
<c:forEach items="${ticketlist}" var="aticket" >
<tr>
<td>${aticket.ticket_id}</td>
<td>${aticket.o_orderid}</td>
<td>${aticket.gate_num}</td>
<td>${aticket.seat_num}</td>
<td>${aticket.board_time }</td>
<td><a href="#" class="btn btn-danger btn-xs" onclick="delete1('${aticket.ticket_id}','${aticket.o_orderid}')">删除</a></td>
</tr>
</c:forEach>
</table>
</center>

</body>
</html>