<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {background-image:url("image/f1.jpg");background-size:100% 100%;}
body {font:normal bold 36px/36px LiSu,sans-serif;color:black}
i.ex1{font:normal bold 36px/36px LiSu,sans-serif;text-decoration:none;}
i.ex2{font:normal bold 24px/24px LiSu,sans-serif;text-decoration:none;}
u.tt{padding: 0px;width:500px;height:200px;text-align:center;text-decoration:none;display: table-cell;vertical-align:middle}
button {background-color: #FFFFFF;border: none;color: black;padding: 9px 18px;text-align: center;text-decoration: none;display: inline-block;font-size: 8px;margin: 4px 2px;-webkit-transition-duration: 0.4s; /* Safari */transition-duration: 0.4s;cursor: pointer;border-radius: 12px;}
.button1:hover {background-color: #555555;color: white;}
a{text-decoration:none}
fieldset {padding:10px;margin:100px;width:480px;height:720px;color:red; border:#06c dashed 8px;background-color:white;}
</style>

</head>
<body>
<center><fieldset>
    <form action="${pageContext.request.contextPath}/insert_Flight" method="post" >
          航班号：
          <input name="flight_id" type="text" placeholder=""/><br>
          航空公司代号：
          <input name="c_comid" type="text" placeholder=""/><br>
          客机编号：
          <input name="a_planeid" type="text" placeholder=""/><br>
          出发站：
          <input name="start_station" type="text" placeholder=""/><br>
          到达站：
          <input name="destn_station" type="text" placeholder=""/><br>
          日期：
          <input name="start_date" type="date" placeholder=""/><br>
          出发时间：
          <input name="start_time" type="text" placeholder=""/><br>
          到达时间：
          <input name="end_time" type="text" placeholder=""/><br>
          耗时：
          <input name="time_long" type="text" placeholder=""/><br>
          载客量：
          <input name="load_num" type="text" placeholder=""/><br>
          余票量：
          <input name="odd_num" type="text" placeholder=""/><br>
          票价：
          <input name="price" type="text" placeholder=""/><br>
        <button class="button1"><i class="ex1">确认</i></button>
<button class="button1"><i class="ex1">取消</i></button><br>                      
    </form>   
    <button class="button1"><i class="ex1"><a href="${pageContext.request.contextPath }/main">返回主页</a></i></button><br>
</fieldset></center>
</body>
</html>