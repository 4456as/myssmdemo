package com.hkdp.controller;


import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hkdp.po.Flight;
import com.hkdp.po.Manager;
import com.hkdp.po.Order;
import com.hkdp.po.Ticket;
import com.hkdp.po.User;
import com.hkdp.service.FlightOrderService;

@Controller
public class FlightOrderController {
	//王仁君
	@Autowired
	private FlightOrderService flightOrderService;//
	
	@RequestMapping(value = "/toHomePage")
	public String toHomePage(HttpSession session) {
//		User userexample=new User();
//		userexample.setUser_id("a100010");
//		userexample.setUser_name("秋殇");
//		userexample.setName("小明");
//		session.setAttribute("USER_SESSION", userexample);//测试用
		Manager manager=(Manager) session.getAttribute("loginmana");
		if(manager!=null) {session.removeAttribute("loginmana");}
	    return "homePage";
	}
	//进入个人信息界面
	@RequestMapping(value = "/touserhomePage")
	public String touserhomePage(HttpSession session) {
	    return "ljy/homePage";
	}
	//用户退出
	@RequestMapping(value = "/userOff")
	public String userOff(HttpSession session) {
		session.removeAttribute("loginuser");
	    return "redirect:toHomePage";
	}
	//查询航班
	@RequestMapping(value = "/toQueryFlights", method = RequestMethod.POST)
	public String toQueryFlights(Model model, Flight flight, HttpSession session) {
//		System.out.println(flight.getStart_date());
//		System.out.println(flight.getStart_station());
//		System.out.println(flight.getDestn_station());
		List<Flight> flights=(List<Flight>)flightOrderService.queryFlights(flight);
		if(flights!=null) {
		model.addAttribute("flightlist", flights);
		return "flightsResultPage";//页面输出符合条件的航班
		}
		return "errorPage";
	}
	//确认订单
	@RequestMapping(value = "/toConfirmOrder", method = RequestMethod.POST)
	public String toConfirmOrder(Model model, Flight aflight, HttpSession session) {
//		System.out.println(myflight);
//		System.out.println(myflight.getFlight_id());
		System.out.println(aflight.getAircom().getCom_name());
		if(aflight!=null) {
			User user=(User)session.getAttribute("loginuser");
			
			Order orderinfo=new Order();
			orderinfo.setF_flightid(aflight.getFlight_id());
			orderinfo.setFlight(aflight);
			orderinfo.setUser(user);
			orderinfo.setU_userid(user.getUser_id());
			//生成订单号
			int length1=10;
	        String base1 = "abcdefghijklmnopqrstuvwxyz0123456789";  
	        Random random1 = new Random();  
	        StringBuffer str1 = new StringBuffer();  
	        for (int i = 0; i<length1; i++) {  
	            int number = random1.nextInt(base1.length());  
	            str1.append(base1.charAt(number));  
	        }
	        orderinfo.setOrder_id(str1.toString());
	        session.setAttribute("OrderInfo", orderinfo);
	        
			return "confirmOrder";
		}
		return "errorPage";
	}
	//生成订单和机票
	@RequestMapping(value = "/toGenerOrder", method = RequestMethod.GET)
	public String toGenerOrder(Model model, HttpSession session) {

		Order myorder=(Order) session.getAttribute("OrderInfo");
		myorder.setStatus(1);
        myorder.setOrder_time(new Timestamp((new Date()).getTime()));
        Integer raws1= flightOrderService.updateOddNum(myorder);//更新航班余票
        
        if(raws1>0) {
        	Integer raws2= flightOrderService.payOrder(myorder);//更新账户
        	if(raws2>0) {
        		Integer raws3= flightOrderService.generOrder(myorder);//插入订单
        		if(raws3>0) {
        			Ticket ticket=new Ticket();
        			int length2=8;
	       	         String base2 = "ABCDEFGHIGKLMNOPQRSTUVWXYZ0123456789";  
	       	         Random random2 = new Random();  
	       	         StringBuffer sb2 = new StringBuffer();  
	       	         for (int i = 0; i < length2; i++) {  
	       	             int number = random2.nextInt(base2.length());  
	       	             sb2.append(base2.charAt(number));  
	       	         }//生成订单号
        			ticket.setTicket_id(sb2.toString());
        			ticket.setO_orderid(myorder.getOrder_id());
        			Integer num=myorder.getFlight().getLoad_num()-myorder.getFlight().getOdd_num()+1;
        			String str=null;
        			if(num%2==0) {str="A";} else {str="B";}
        			ticket.setSeat_num(str+num.toString());
        			if(num>100) {str="G002";} else {str="G001";}
        			ticket.setGate_num(str);
        			ticket.setBoard_time(myorder.getFlight().getStart_time());
        			Integer raws4=flightOrderService.generTicket(ticket);//生成机票
        			model.addAttribute("message", "您的订单完成");
                	return "orderResultPage";
        		}
        		else {
        			model.addAttribute("message", "网络拥堵，请稍后再试");
                	return "orderResultPage";
        		}
        	}
        	else {
        		model.addAttribute("message", "余额不足");
            	return "orderResultPage";
        	}
			
        }
        else {
        	model.addAttribute("message", "航班余票不足");
        	return "orderResultPage";
        }
//		if(raws1>0) {
//		return "redirect:toShowNewOrder";
//		}
	}
	//展示订单
	@RequestMapping(value = "/toShowNewOrder")
	public String toShowNewOrder() {
	    return "showNewOrder";
	}
}
