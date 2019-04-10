<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.itheima.po.User,com.itheima.po.Travelgroup,java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
			width:1200px;
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
        <div class="navigationDiv"><h1>我参报过的旅游团</h1></div>
        <div class="foucsDiv">
        	<div class="leftDiv">
        		<%-- <jsp:useBean id="user_group" class="com.itheima.po.User" scope="session"/> --%>
				<%
				User user_group=(User)session.getAttribute("USER_GROUP_SESSION");
				List<Travelgroup> grouplist=user_group.getTravelgrouplist();
				%>
				<script type="text/javascript">
					document.write("<table>");
					document.write("<tr>");
					document.write("<th>旅游团编号</th><th>旅游团名</th><th>旅游团电话</th><th>旅游社编号</th>"+
					"<th>出发地</th><th>价格</th><th>景点号</th><th>总人数</th><th>报团人数</th><th></th>");
					document.write("</tr>");
				</script>
				<% for(Travelgroup group:grouplist){
					Integer groupid=group.getGroupid();String groupname=group.getGroupname();
					Integer grouptel=group.getGrouptel();Integer agen_id=group.getAgen_id();
					String startspot=group.getStartspot();double price=group.getPrice();
					Integer sce_id=group.getSce_id();Integer maxpeople=group.getMaxpeople();
					Integer surpeople=maxpeople-group.getSurpeople();
				%>
				<script type="text/javascript">
					
					document.write("<tr>");
					document.write("<td>"+"<%=groupid%>"+"</td>");
					document.write("<td>"+"<%=groupname%>"+"</td>");
					document.write("<td>"+"<%=grouptel%>"+"</td>");
					document.write("<td>"+"<%=agen_id%>"+"</td>");
					document.write("<td>"+"<%=startspot%>"+"</td>");
					document.write("<td>"+"<%=price%>"+"元</td>");
					document.write("<td>"+"<%=sce_id%>"+"</td>");
					document.write("<td>"+"<%=maxpeople%>"+"</td>");
					document.write("<td>"+"<%=surpeople%>"+"</td>");
					document.write("<td>"+
					"<a href='${pageContext.request.contextPath }/findGroupAgency.action?strgroupid=<%=groupid%>'>"+
							"查看所属旅行社信息</a></td>");
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