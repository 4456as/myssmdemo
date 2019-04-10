package com.itheima.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itheima.po.Hotelgroup;
import com.itheima.po.Order;
import com.itheima.service.OrderService;

@Controller
public class OrderController {
	@Autowired
	private OrderService orderService;
	
	@RequestMapping(value = "/tomanaorders.action")
	public String toManaHotelGroup() {
	    return "manaorders";
	}
	//selectall
	@RequestMapping(value = "/toFindAllOrders.action")
	public String toFindAllOrders(Model model, HttpSession session) {

		List<Order> listorders = orderService.findAllOrders();
		if(listorders != null){		

			session.setAttribute("LISTORDERS_SESSION", listorders);

			return "succmanaqueryord";
		}
		model.addAttribute("msg", "");

		return "error";
	}
	//update
//		@RequestMapping(value = "/toupdateorders.action")
//		public String toUpdate() {
//		    return "updateorders";
//		}
		
		@RequestMapping(value = "/updateOrders.action",method = RequestMethod.POST)
		public String updateOrders(Model model, HttpSession session,Order orders) {
			
			Integer raws=orderService.updateOrders(orders);
			if(raws>0){		
				model.addAttribute("msg", raws);
				return "succmanaorders";
			}
			return "error";
		}
		
		//delete
//			@RequestMapping(value = "/todelorders.action")
//			public String toDelete() {
//			    return "delorders";
//			}
			
			@RequestMapping(value = "/delOrders.action",method = RequestMethod.POST)
			public String delOrders(Model model, HttpSession session,Order orders) {
				Integer raws=orderService.delOrders(orders);
				if(raws>0){		
					model.addAttribute("msg", raws);
					return "succmanaorders";
				}
				return "error";
			}
}
