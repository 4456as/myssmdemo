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
import com.itheima.service.HotelGroupService;
import com.itheima.service.OrderService;


@Controller
public class HotelGroupController {
	@Autowired
	private HotelGroupService hotelGroupService;
	
	@RequestMapping(value = "/tomanahotelgroup.action")
	public String toManaHotelGroup() {
	    return "manahotelgroup";
	}
	//select
	@RequestMapping(value = "/toFindAllHotelGroups.action")
	public String toFindAllHotelGroups(Model model, HttpSession session) {

		List<Hotelgroup> listhotelgroups = hotelGroupService.findAllHotelGroups();
		if(listhotelgroups != null){
			session.setAttribute("LISTHOTELGROUPS_SESSION", listhotelgroups);
			return "succmanaqueryhg";
		}
		model.addAttribute("msg", "");
		return "error";
	}
	
	//add
//	@RequestMapping(value = "/toaddhotelgroups.action")
//	public String toAdd() {
//	    return "addhotelgroup";
//	}
	
	@RequestMapping(value = "/addHotelGroup.action",method = RequestMethod.POST)
	public String addHotelGroup(Model model, HttpSession session,Hotelgroup hotelgroup) {
		Integer raws=hotelGroupService.addHotelGroup(hotelgroup);
		
		if(raws>0){		

			model.addAttribute("msg", raws);

			return "succmanahotelgroup";
		}
		return "error";
	}
	//update
//	@RequestMapping(value = "/toupdatehotelgroups.action")
//	public String toUpdate() {
//	    return "updatehotelgroup";
//	}
	
	@RequestMapping(value = "/updateHotelGroup.action",method = RequestMethod.POST)
	public String updateHotelGroup(Model model, HttpSession session,HttpServletRequest request) {
		Integer group_id=Integer.valueOf(request.getParameter("group_id"));
		Integer hotel_id=Integer.valueOf(request.getParameter("hotel_id"));
		Integer new_hotel_id=Integer.valueOf(request.getParameter("new_hotel_id"));
		Map<String,Object> hotelgroupmap=new HashMap<String,Object>();
		hotelgroupmap.put("group_id", group_id);
		hotelgroupmap.put("hotel_id", hotel_id);
		hotelgroupmap.put("new_hotel_id", new_hotel_id);
		Integer raws=hotelGroupService.updateHotelGroup(hotelgroupmap);
		if(raws>0){		
			model.addAttribute("msg", raws);
			return "succmanahotelgroup";
		}
		return "error";
	}
	
	//delete
//		@RequestMapping(value = "/todelhotelgroups.action")
//		public String toDelete() {
//		    return "delhotelgroup";
//		}
		
		@RequestMapping(value = "/delHotelGroup.action",method = RequestMethod.POST)
		public String delHotelGroup(Model model, HttpSession session,Hotelgroup hotelgroup) {
			Integer raws=hotelGroupService.delHotelGroup(hotelgroup);
			if(raws>0){		
				model.addAttribute("msg", raws);
				return "succmanahotelgroup";
			}
			return "error";
		}
		
}
