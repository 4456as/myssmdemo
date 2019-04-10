<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <link href="css/show.css" rel="stylesheet" type="text/css">
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
		.main{margin:10px auto;width:1200px;height: 500px;
			background: url(images/plane01.jpg) no-repeat;background-size: 1200px 495px}
		.leftcont{width: 40%;height: 99%;float: left;text-align: center;
			font-size: 30pt;color: #01a3a4;font-family: '华文琥珀'}
		.rightcont{float: right;width: 60%;height: 99%;text-align: center;
		line-height: 70px;color: #fdcb6e;
			font-size: 25pt;background-color:rgba(0,0,0,0.5);border-radius:10px;}
		
		/*右侧公告*/
		.endlogo{margin:5px auto;width:1310px}
		/*foot*/
		.footer{width:100%;background:#efefef;height:130px;margin-top:5px}
		.padding-top{padding-top:10px;margin-top:15px}
		.foot_line{border-bottom:1px solid #ccc;font-size:12px;margin-top:10px}
		.gotop{background:url(images/gotop.jpg) no-repeat;width:60px;
			height:60px;position:fixed;bottom:20px;right:0}
		
		.scinput{width:240px; height:50px; line-height:32px;
		   border-top:solid 1px #a7b5bc; border-left:solid 1px #a7b5bc; 
		   border-right:solid 1px #ced9df; border-bottom:solid 1px #ced9df; 
		    text-indent:10px;
		    color:#999;border:0;margin:0;padding:0;font-size:18pt;border-radius:3px;}
		.scbtn{width:150px;height:50px; 
		  	background:#3498db;
		  	font-size:18pt;font-weight:bold;color:#fff; cursor:pointer;
		  	border-radius:10px; border:0;margin:0;padding:0;}
		.scbtn:hover{background:#2980b9}
    </style>
    
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
        <a href="${pageContext.request.contextPath }/addUser"  class="orange"> [免费注册]</a>
      </c:if>
    </div>
    <div class="floatr">客户服务<img src="images/arrow.gif">&nbsp;
    	网站导航<img src="images/arrow.gif">&nbsp;
    	<c:if test="${loginuser == null }" var="flag" scope="session">
    		<a href="${pageContext.request.contextPath }/in1" class="orange">管理员入口</a>
      	</c:if>
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
  <div class="leftcont"><h1>航 空 订 票</h1></div>
  <div class="rightcont"><br>
    <form action="${pageContext.request.contextPath }/toQueryFlights" method="POST">
      <ul class="myform">
        <li style="color: #01a3a4;font-size: 35pt;font-family: '幼圆';font-weight: bold">机 票 预 订</li>
        <li>
          出 发 地 : <input class="scinput" type="text" name="start_station" placeholder="北京"/>
        </li>
        <li>
          目 的 地 : <input class="scinput" type="text" name="destn_station" placeholder="上海"/>
        </li>
        <li>
          选择航班日期：<input class="scinput" name="start_date" type="date" placeholder="2018/09/01" min="2018-09-01" max="2018-09-30"/>
        </li>
        <li style="display: inline;">
          <input class="scbtn" type="submit" value="航 班 查 询" />
        </li>&nbsp;&nbsp;&nbsp;&nbsp;
        <li style="display: inline;">
          <input class="scbtn" type="reset" value="重 置" />
        </li>
      </ul>
    </form>
  </div>

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