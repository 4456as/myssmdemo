<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.itheima.po.User,com.itheima.po.Order,java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的历史订单</title>
    <style type="text/css">
    body{font-family:microsoft yahei; background-image: url(images/bgimg.png); background-size: 100% 1000px;background-repeat: no-repeat;}
	a{text-decoration:none;}
	table{border-collapse:collapse;caption-side:top;margin:0 auto;}
	td,th{border:1px solid #98bf21;text-align:center;padding:5px 10px;}
	td{background-color:#EAF2D3;}
	h1{color: #008B8B}
		body,div{
			margin:0px auto;
			padding:0px;
		}
		.containerDiv{
			margin:0 auto;
			width:1000px;
			height:800px;
			background-color:#CCC;
		}
		.bannerDiv{
			width:100%;
			height:50px;
			background-color:#BBB;
		}
		.navigationDiv{
			width:100%;
			height:50px;
			background-color:#FFDEAD;
			text-align: center;
			vertical-align: middle;
		}		
		.foucsDiv{
			width:100%;
			height:600px;
			background-color:#BBB;
			padding:4px 0px;
		}
		.contentDiv{
			width:100%;
			height:300px;
			background-color:#999;
			padding-top:3px 0px;
		}
		.footerDiv{
			width:100%;
			height:90px;
			background-color:#BBB;
			margin-top:3px;
			text-align: center;
			font-size: 20pt;
		}
		.footerDiv p{margin-top: 30px;}
		.leftDiv{
			width:100%;
			height:99%;
			background-color:#FFEBCD;
			float:left;
		}
		.leftDiv table{margin-top: 100px;}
		.rightDiv{
			width:69%;
			height:99%;
			background-color:#FFEBCD;
			float:right;
		}
		.content1{
			width:99.9%;
			height:98%;
			background-color:#FFE4C4;
			float:left;
		}
		.content2{
			width:49%;
			height:98%;
			background-color:#FFE4C4;
			float:left;
			margin-left:4px;
		}
		.content3{
			width:49%;
			height:98%;
			background-color:#FFE4C4;
			float:left;
			margin-left:9px;
		}
		.content3 p{margin-top: 140px;}
		.clearBoth{
			clear:both;
		}
    </style>
  </head>
  <body>  
	  <div class="containerDiv">
      	<div class="bannerDiv"></div>
        <div class="navigationDiv"><h1>我的历史订单</h1></div>
        <div class="foucsDiv">
        	<div class="leftDiv">
        		<%-- <jsp:useBean id="user_group" class="com.itheima.po.User" scope="session"/> --%>
				<%
				User user_order=(User)session.getAttribute("USER_ORDER_SESSION");
				List<Order> orderlist=user_order.getOrderlist();
				%>
				<script type="text/javascript">
					document.write("<table>");
					document.write("<tr>");
					document.write("<th>订单编号</th><th>旅游团编号</th>");
					document.write("</tr>");
				</script>
				<% for(Order order:orderlist){
					Integer orderid=order.getOrderid();
					Integer groupid=order.getGroup_id();
				%>
				<script type="text/javascript">
					
					document.write("<tr>");
					document.write("<td>"+"<%=orderid%>"+"</td>");
					document.write("<td>"+"<%=groupid%>"+"</td>");
					document.write("</tr>");
				</script>
				<%} %>
				<script type="text/javascript">
					document.write("</table>");
				</script>
        	</div>
<!--             <div class="rightDiv">
				
            </div> -->
        </div>
        <div class="clearBoth"></div>
<!--         <div class="contentDiv"> -->
<!--         	<div class="content1">
				
        	</div>  -->
            <!-- <div class="content2"></div>-->
<!--             <div class="content3">
            	
            </div> -->
       <!--  </div> -->
        <div class="clearBoth"></div>
        <div class="footerDiv">
        	<a href="${pageContext.request.contextPath }/touserhome.action"><p>返回</p></a>
        </div>
      </div>
  </body>
</html>