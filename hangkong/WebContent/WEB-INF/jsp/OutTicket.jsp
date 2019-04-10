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
<title>Insert title here</title>
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
function printticket(ticket_id,o_orderid) {
   
$.post("<%=basePath%>outTicket",{"ticket_id":ticket_id,"o_orderid":o_orderid});
}

</script>
</head>
<body style="background:url(image/sy002.jpg)">
<table border=1>

<tr>
<td>机票号</td>
<td>订单号</td>
<td>登机口</td>
<td>座号</td> 
<td>登机时间</td>
<td>操作</td> </tr>

<c:forEach items="${tickets}" var="ticket" >
<tr>
	<td>${ticket.ticket_id }</td>
	<td>${ticket.o_orderid}</td>
	<td>${ticket.gate_num }</td>
	<td>${ticket.seat_num }</td>
	<td>${ticket.board_time }</td>
	<td><a href="${pageContext.request.contextPath }/tosyOutTicketFinish" class="btn btn-danger btn-xs" 
	onclick="printticket('${ticket.ticket_id}','${ticket.o_orderid}')">打印机票</a></td>
</tr>

</c:forEach>
</table>

</body>
</html>