package com.hkdp.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hkdp.po.Order;
import com.hkdp.po.User;
import com.hkdp.service.UserOrderService;

@Controller
public class UserOrderController {

	@Autowired
	private UserOrderService userOrderService;
	@RequestMapping("/test")
	public String test() {
		return "test";
	}
	@RequestMapping("/Order/userorder")
	public String userorder(Order order,Model model,HttpSession session) {
		User user =(User) session.getAttribute("loginuser");
		ArrayList<Order> orders01=new ArrayList<Order>();
		ArrayList<Order> orders02=new ArrayList<Order>();
		List<Order> order1 = userOrderService.selectOrderList(user);
		for(Order ord:order1){
			if(ord.getStatus()==1){
				orders01.add(ord);
			}else {
				orders02.add(ord);
			}
		}
		model.addAttribute("order",order1);
		model.addAttribute("order1",orders01);
		model.addAttribute("order2",orders02);
		return "success";
	}
	@RequestMapping("/Order/delete1.action")
	@ResponseBody
	public String Orderdelete(Integer order_id) {
		System.out.println("adada");
		int rows = userOrderService.deleteOrder(order_id);
		if(rows > 0) {
			return "ok";
		}else {
			return "fail";
		}
		
	}
	@RequestMapping("/Order/delete2.action")
	@ResponseBody
	public String Orderdelete1() {
		System.out.println("adada");
		int rows = userOrderService.deleteOrderauto();
		if(rows > 0) {
			return "ok";
		}else {
			return "fail";
		}
		
	}
	
}