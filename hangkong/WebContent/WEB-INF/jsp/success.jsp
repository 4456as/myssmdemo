<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<style type="text/css">

     body{font-size:12px;font-family:microsoft yahei;margin:0;color:#000}
	*{padding:0;margin:0}
	li,ul{list-style:none}
	a{color:#000;text-decoration:none}
	a:hover{color:#ce2626;text-decoration:none}
	img{border:none}
	input[type="date"]::-webkit-inner-spin-button { display:none; }
	input[type="date"]::-webkit-clear-button{
	   display:none;
	}

	.clear{clear:both}
	.floatl{float:left}
	.floatr{float:right}

	/*头部*/
	.top_bg{border-bottom:1px solid #ccc;font-size:20px;
	  font-family:'宋体';line-height:50px;background:#f7f7f7;height:50px}
	.top_content{width:1200px;margin:0 auto}
	.orange{font-weight:700;color:#f60}

	.logo{margin:10px auto;width:1210px}
	.nav_bg{background:#01a3a4;width:100%;color:#fff}
	.nav_content{width:1200px;margin:0 auto;height:40px;line-height:40px}
	.nav{width:1000px;float:left;margin-left:150px}
	.nav li{font-size:16px;font-weight:700;color:#fff;width:100px;
	float:left;text-align:center;margin-right:20px;}
	.nav li:hover{background:#1289A7}

	.nav li a.white:hover{color:#FFDEAD;text-decoration:none;}
	.nav li a.white{color:#fff;text-decoration:none}


	/*中间*/
	.main{margin:50px auto;height:550px;width:1200px;text-align: center;}

	.endlogo{5px auto;width:1310px}
	/*foot*/
	.footer{width:100%;background:#efefef;height:130px;margin-top:5px}
	.padding-top{padding-top:10px;margin-top:15px}
	.foot_line{border-bottom:1px solid #ccc;font-size:12px;margin-top:10px}
	.gotop{background:url(../images/gotop.jpg) no-repeat;width:60px;
	  height:60px;position:fixed;bottom:20px;right:0px}


	 .tb {
		width:550px;
		height:350px;
		margin-left: 350px;
		margin-top: 50px;
	}
	.tb tr td {
		padding: 5px;
	}

	.customers{
		font-size:17px;
		width: 500px;
		border-collapse: collapse;
		caption-side: bottom;
		text-align: left;
	}
	.customers td,.customers th{
		font-size: 1em;
		border: 2px solid #005757;
		padding: 3px 7px 2px 7px;
		
		
	}
	.customers th{
		font-size: 1em;
		background-color: #A7C942;
		color: #ffffff;
	}
	.customers tr.alt td{
		color: #000000;
		background-color: #f0f0f0;
	}
	.customers tr td {
		color: #FF0000;
		background-color: #f0f0f0;
	}  
</style>
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
// 删除客户
function deleteorder(order_id) {
    if(confirm('确实要删除该订单吗?')) {
$.post("<%=basePath%>Order/delete1.action",{"order_id":order_id},
function(data){
            if(data =="ok"){
                alert("删除成功！");
                window.location.reload();
            }else{
                alert("删除失败！");
                window.location.reload();
            }
        });
    }else{
    	alert("未操作");
    	window.loaction.reload();
    }
}
function deleteorder1() {
    if(confirm('确实要删除所有过期订单吗?')) {
$.post("<%=basePath%>Order/delete2.action",
function(data){
            if(data =="ok"){
                alert("删除成功！");
                window.location.reload();
            }else{
                alert("删除失败！");
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
<!--顶部区域 start-->
<div id="myAnchor" class="top_bg">
  <div class="top_content">
    <div class="floatl"><img src="../images/star.jpg"><a href="#">收藏</a> | HI，欢迎订票 ！
        <a href="#" class="orange">尊贵的VIP用户：
        ${loginuser.getUser_name()}</a>
    </div>
    <div class="floatr">客户服务<img src="../images/arrow.gif">&nbsp;网站导航<img src="../images/arrow.gif">&nbsp;
    </div>
  </div>
</div>
<!--顶部区域 end-->
<div class="clear"></div>
<!--logo和banner start-->
<div class="logo"><a href="#"><img src="../images/adver01.jpg"  style="width: 600px"></a>
  <a href="#"><img src="../images/adver02.jpg" class="floatr " style="width: 600px;"></a>
</div>
<!--logo和banner  end--> 
<div class="clear"></div>
<!--菜单导航栏 start-->
<div class="nav_bg">
  <div class="nav_content">
    <ul class="nav">
      <li><a href="${pageContext.request.contextPath }/toHomePage" class="white">首 页</a></li>
      <li><a href="#"  class="white">国 内 低 价</a></li>
      <li><a href="#"  class="white">国 际 低 价</a></li>
      <li><a href="#"  class="white">港 澳 台 低 价</a></li>
      <li><a href="#"  class="white">快 来 抢</a></li>
      <li><a href="#"  class="white">热 门 航 线</a></li>
      <li><a href="#"  class="white">网 站 公 告</a></li>
    </ul>
  </div>
</div>
<!--菜单导航栏 end--> 
<!--中间部分 start-->
<div class="clear"></div>
<div class="main">

		<div class="tb">
		<form action="${pageContext.request.contextPath }/Order/userorder" method="post" id="formid">
		订单编号:<input type="text" name="order_id" id="order_id"/>
		航班编号:<input type="text" name="f_flightid" id="f_flightid">
		 <input type="submit" value="查询" /><br/>
		
		
		</form>
		
		<p style="font-size: 20px;" >有效订单</p>
		<table class="customers">
		
		<tr class="alt">
		<td>订单编号</td>
		<td>订单用户编号</td>
		<td>航班编号</td>
		<td>订单时间</td>
		<td>订单状态</td>
		</tr>
		<c:forEach items="${ order1}" var="order1">
		<tr class="alt">
		<td>${order1.order_id }</td>
		<td>${order1.u_userid }</td>
		<td>${order1.f_flightid }</td>
		<td>${order1.order_time }</td>
		<td>${order1.status }</td>
		</tr>
		
		</c:forEach>
		</table>
		
		<p style="font-size: 20px; color: #B12121;">已过期订单</p>
		<table class="customers">
		<tr class="alt" >
		<td>订单编号</td>
		<td>订单用户编号</td>
		<td>航班编号</td>
		<td>订单时间</td>
		<td>订单状态</td>
		</tr>
		<c:forEach items="${ order2}" var="order2">
		<tr >
		<td>${order2.order_id }</td>
		<td>${order2.u_userid }</td>
		<td>${order2.f_flightid }</td>
		<td>${order2.order_time }</td>
		<td>${order2.status }</td>
		<td><a href="#"  onclick="deleteorder('${order2.order_id}')">删除</a></td>
		</tr>
		
		</c:forEach>
		</table>
		
		<form>
		<a href="#"  onclick="deleteorder1()">一键删除</a>
		<a href="${pageContext.request.contextPath }/touserhomePage">返回</a>
		</form>
		</div>

</div>
<div class="clear"></div>
<div class="endlogo"><a href="#"><img src="../images/adver03.jpg"  style="width: 650px"></a>
  <a href="#"><img src="../images/adver04.jpg" class="floatr " style="width: 650px;"></a>
</div>
<!--底部 start-->
<div class="clear"></div>
<div class="footer">
  <a href="#myAnchor"><div class="gotop"></div></a>


  <div class="clear"></div>
  <div class="foot_line"></div>
  <p align="center" class="padding-top">Copyright©2018 Qunar.com    京公网安备110108901530  京ICP备05021087号  营业执照信息  保险经纪资质  (京)-非经营性-2016-0110<Br/>
  关于Qunar.com | 酒店分销商加盟 | 业务合作 | 加入我们 | "严重违规失信"专项整治举报 | 
  安全中心 | 星骆驼公益|About Us
  </p>
  <p align="center"><img src="../images/foot_pic.jpg"></p>
  <div class="clear"></div>
</div>

<!--底部 end-->
</body>
</html>
