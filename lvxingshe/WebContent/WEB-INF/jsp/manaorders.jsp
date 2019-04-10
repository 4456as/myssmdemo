<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	input{width:200px;height: 40px; font-size: 15pt;}
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
			height:300px;
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
		}
		.leftDiv{
			width:30%;
			height:99%;
			background-color:#FFEBCD;
			float:left;
			text-align: center;
			
		}
		.leftDiv h2{vertical-align: middle;margin-top: 140px}
		.rightDiv{
			width:69%;
			height:99%;
			background-color:#FFEBCD;
			float:right;
			text-align: center;
			font-size: 20pt;
		}
		.rightDiv form{margin-top: 50px}
		.content1{
			width:99.9%;
			height:98%;
			background-color:#FFE4C4;
			float:left;
						text-align: center;
			font-size: 20pt;
		}
		.content2{
			width:49%;
			height:98%;
			background-color:#FFE4C4;
			float:left;
			margin-left:4px;
			text-align: center;
			font-size: 20pt;
		}
		.content1 form{margin-top: 50px}
		.content3{
			width:49%;
			height:98%;
			background-color:#FFE4C4;
			float:left;
			margin-left:9px;
			text-align: center;
			font-size: 20pt;
		}
		.content3 form{margin-top: 50px}
		.clearBoth{
			clear:both;
		}
    </style>
  </head>
  <body>  
	  <div class="containerDiv">
      	<div class="bannerDiv"></div>
        <div class="navigationDiv"><h1>用户订单管理</h1></div>
        <div class="foucsDiv">
        	<div class="leftDiv"><a href="${pageContext.request.contextPath }/toFindAllOrders.action">
        	<h2>查询所有用户订单</h2></a></div>
            <div class="rightDiv">
				<form action="${pageContext.request.contextPath }/updateOrders.action"
					method="post" id='form5'>
					订单号   ：<input type="text" name="orderid" id="orderid" />
					<br/>
					更改订单的旅游团：<br/>
					新的旅游团号   ：<input type="text" name="group_id" id="group_id" />
					<br/><br/>
					<input type="reset" value="重置"/>&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="提交"/>
				</form>
            </div>
        </div>
        <div class="clearBoth"></div>
        <div class="contentDiv">
        	<div class="content1">
				<form action="${pageContext.request.contextPath }/delOrders.action"
					method="post" id='form6'>
					删除订单：<br/>
					订单号   ：<input type="text" name="orderid" id="orderid" />
					<br/><br/>
					<input type="reset" value="重置"/>&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="提交"/>
				</form>
        	</div> 
            <!-- <div class="content2"></div>-->
<!--             <div class="content3">
            	
            </div> -->
        </div>
        <div class="clearBoth"></div>
        <div class="footerDiv"><a href="${pageContext.request.contextPath }/mloginsuccess.action">返回</a></div>
      </div>
  </body>
</html>