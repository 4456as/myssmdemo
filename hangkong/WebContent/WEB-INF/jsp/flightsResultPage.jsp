<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <script type="text/javascript" src="js/jquery-1.x.js"> </script>
	<script type="text/javascript">
		function checkuser(){
			var user='<%=session.getAttribute("loginuser")%>';
			if(user!=null){return true;}else{return false}
		}
	</script>
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

		table{border-collapse:collapse;border-spacing: 0;font-size: 20px}
		thead{font-family: '幼圆';font-weight: bold;color: #01a3a4}
		caption{font-family: '幼圆';font-weight: bold;color: #01a3a4;
		font-size: 30px}

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
		.main{margin:10px auto;width:1300px;}
		.main img{width: 100px;height: 100px;}

		.endlogo{margin:5px auto;width:1310px}
		/*foot*/
		.footer{width:100%;background:#efefef;height:130px;margin-top:5px}
		.padding-top{padding-top:10px;margin-top:15px}
		.foot_line{border-bottom:1px solid #ccc;font-size:12px;margin-top:10px}
		.gotop{background:url(images/gotop.jpg) no-repeat;width:60px;
		  height:60px;position:fixed;bottom:20px;right:0px}

		.scbtn{width:80px;height:100px; 
		    background:#01a3a4;
		    font-size:17pt;font-weight:bold;color:#fff; cursor:pointer;
		    border:0;margin:0;padding:0;}
		.scbtn:hover{background:#1289A7}
		/*表单*/
		
	    .tablelist{border:solid 1px #cbcbcb; width:1300px; clear:both;}
	    .tablelist th{background-color: #e5ebee; height:50px; line-height:34px; border-bottom:solid 1px #b6cad2; text-indent:0px; text-align:left;}
	    .tablelist td{line-height:35px; text-indent:0px; border-right: dotted 1px #c7c7c7;}
	    .tablefirsttd {width: 100px}
	    
	    .even{background:#e5ebee;}
	    .tablelist tbody tr:hover{background:#ced6e0;}
	    .imgtd{width: 100px}
	    .tableendtd{width: 80px}
    </style>
    <script type="text/javascript">
    	$(document).ready(function(){
    		$('tr:even').addClass('even');
    	});
    </script>
</head>
<body>
<!--顶部区域 start-->
<div id="myAnchor" class="top_bg">
  <div class="top_content">
    <div class="floatl"><img src="images/star.jpg"><a href="#">收藏</a> | HI，欢迎订票 ！
      <c:if test="${loginuser != null }" var="flag" scope="session">
        <a href="${pageContext.request.contextPath }/touserhomePage" class="orange">
        尊贵的VIP用户：${loginuser.getUser_name()}</a>
        <a href="${pageContext.request.contextPath }/userOff" class="orange">退出</a>  
      </c:if>
      <c:if test="${loginuser == null }" var="flag" scope="session">
        <a href="${pageContext.request.contextPath }/in" class="orange">[请登录]</a> 
        <a href="${pageContext.request.contextPath }/register"  class="orange"> [免费注册]</a>
      </c:if>
    </div>
    <div class="floatr">客户服务<img src="images/arrow.gif">&nbsp;网站导航<img src="images/arrow.gif">&nbsp;
    </div>
  </div>
</div>
<!--顶部区域 end-->
<div class="clear"></div>
<!--logo和banner start-->
<div class="logo"><a href="#"><img src="images/adver01.jpg"  style="width: 600px"></a>
  <a href="#"><img src="images/adver02.jpg" class="floatr " style="width: 600px;"></a>
</div>
<!--logo和banner  end--> 
<div class="clear"></div>
<!--菜单导航栏 start-->
<div class="nav_bg">
  <div class="nav_content">
    <ul class="nav">
      <li><a href="${pageContext.request.contextPath }/toHomePage" class="white">首 页</a></li>
      <li><a href="#"  class="white">国 内 低 价</li>
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

  

	<table class="tablelist">
	<caption>请 选 择 航 班</caption>
	<thead>
	  <tr>
	    <th class="tablefirsttd"></th>
	    <th>航班号</th>
	    <th>航空公司</th>
	    <th>客机型号</th>
	    <th>始发站</th>
	    <th>终点站</th>
	    <th>日期</th>
	    <th>发航时间</th>
	    <th>到达时间</th>
	    <th>时长(分)</th>
	    <th>载客量</th>
	    <th>余票量</th>
	    <th>票价(元)</th>
	    <th>
	    	
	    </th>
	  </tr>
	</thead>
	<tbody id="mytbody">
		<c:forEach items="${flightlist}" var="aflight" >
		<form action="${pageContext.request.contextPath }/toConfirmOrder" method="POST">
	  <tr>
	    
	    <td class="imgtd"><img src="images/plane03.jpg" /></td>
	    <td>${aflight.flight_id}</td>
	    <td>${aflight.aircom.com_name}</td>
	    <td>${aflight.airliner.plane_model}</td>
	    <td>${aflight.start_station}</td>
	    <td>${aflight.destn_station}</td>
	    <td>${aflight.start_date}</td>
	    <td>${aflight.start_time}</td>
	    <td>${aflight.end_time}</td>
	    <td>${aflight.time_long}</td>
	    <td>${aflight.load_num}</td>
	    <td>${aflight.odd_num}</td>
	    <td>${aflight.price}</td>
	    <td class="tableendtd">
	    	<input type="text" name="flight_id" value="${aflight.flight_id}" readonly style="display:none"/>
	    	<input type="text" name="com_name" value="${aflight.aircom.com_name}" readonly style="display:none"/>
		    <input type="text" name="plane_model" value="${aflight.airliner.plane_model}" readonly style="display:none"/>
		    <input type="text" name="start_station" value="${aflight.start_station} " readonly style="display:none"/>
		    <input type="text" name="destn_station" value="${aflight.destn_station}" readonly style="display:none"/>
		    <input type="text" name="start_date" value="${aflight.start_date}" readonly style="display:none"/>
		    <input type="text" name="start_time" value="${aflight.start_time}" readonly style="display:none"/>
		    <input type="text" name="end_time" value="${aflight.end_time}" readonly style="display:none"/>
		    <input type="text" name="time_long" value="${aflight.time_long}" readonly style="display:none"/>
		    <input type="text" name="load_num" value="${aflight.load_num}" readonly style="display:none"/>
		    <input type="text" name="odd_num" value="${aflight.odd_num}" readonly style="display:none"/>
		    <input type="text" name="price" value="${aflight.price}" readonly style="display:none"/>
	    	<input type="text" name="airliner.plane_id" value="${aflight.airliner.plane_id}" style="display:none"/>
			<input type="text" name="airliner.plane_model" value="${aflight.airliner.plane_model}" style="display:none"/>
			<input type="text" name="aircom.com_id" value="${aflight.aircom.com_id}" style="display:none"/>
			<input type="text" name="aircom.com_name" value="${aflight.aircom.com_name}" style="display:none"/>
			<input class="scbtn" type="submit" name="submit" value="选  择" onclick="checkuser()"/>
	    </td>
	  </tr>
	    </form>
	    </c:forEach>

	</tbody>
	</table>

	
 </div>


<div class="clear"></div>
<div class="endlogo"><a href="#"><img src="images/adver03.jpg"  style="width: 650px"></a>
  <a href="#"><img src="images/adver04.jpg" class="floatr " style="width: 650px;"></a>
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
  <p align="center"><img src="images/foot_pic.jpg"></p>
  <div class="clear"></div>
</div>

<!--底部 end-->
</body>
</html>