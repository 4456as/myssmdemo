package com.itheima.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itheima.po.Hotelgroup;
import com.itheima.po.Travelgroup;
import com.itheima.po.User;
import com.itheima.service.UserHistoryService;


@Controller
public class UserHistoryController {
	@Autowired
	private UserHistoryService userHistoryService;
	
	@RequestMapping(value = "/touserhome.action")
	public String toUserHome() {
	    return "userhome";
	}
	
	//多对多 我参加过的团  嵌套+结果查询
	@RequestMapping(value = "/findUserGroup.action" )
	public String findUserGroup(Model model, HttpSession session) {
		User user=(User)session.getAttribute("USER_SESSION");
		User user_group= userHistoryService.findUserGroup(user.getUserid());
		if(user_group != null){
			session.setAttribute("USER_GROUP_SESSION", user_group);
			return "redirect:toshowusergroup.action";
		}
		model.addAttribute("msg", "");
		return "error";
	}
	@RequestMapping(value = "/toshowusergroup.action")
	public String toShowug() {
	    return "showusergroup";//其中一按钮跳转至findGroupAgency
	}
	//一对多 我的历史订单 嵌套结果
	@RequestMapping(value = "/findUserOrder.action")
	public String findUserOrder(Model model, HttpSession session) {
		User user=(User)session.getAttribute("USER_SESSION");
		User user_order= userHistoryService.findUserOrder(user.getUserid());
		if(user_order != null){
			session.setAttribute("USER_ORDER_SESSION", user_order);
			return "redirect:toshowuserorder.action";
		}
		model.addAttribute("msg", "");
		return "error";
	}
	@RequestMapping(value = "/toshowuserorder.action")
	public String toShowuo() {
	    return "showuserorder";
	}
	//跨多表多对多 我去过的景点 嵌套结果
	@RequestMapping(value = "/findUserScenery.action")
	public String findUserScenery(Model model, HttpSession session) {
		User user=(User)session.getAttribute("USER_SESSION");
		User user_scen= userHistoryService.findUserScenery(user.getUserid());
		if(user_scen != null){
			session.setAttribute("USER_SCENERY_SESSION", user_scen);
			return "redirect:toshowuserscen.action";
		}
		model.addAttribute("msg", "");
		return "error";
	}
	@RequestMapping(value = "/toshowuserscen.action")
	public String toShowus() {
	    return "showuserscen";
	}
	//一对一 嵌套查询旅游团所属的旅行社信息
	@RequestMapping(value = "/findGroupAgency.action" , method = RequestMethod.GET)
	public String findGroupAgency(Integer strgroupid,Model model, HttpSession session,HttpServletRequest request) {
		//User user_group=(User)session.getAttribute("USER_GROUP_SESSION");
//		String strgroupid1=request.getParameter("strgroupid");//获取地址栏参数
//		Integer groupid=Integer.valueOf(strgroupid);
		Travelgroup group_agen= userHistoryService.findGroupAgency(strgroupid);
		if(group_agen != null){
			session.setAttribute("GROUP_AGENCY_SESSION", group_agen);
			return "redirect:toshowgroupagency.action";
		}
		model.addAttribute("msg", "");
		return "error";
	}
	@RequestMapping(value = "/toshowgroupagency.action")
	public String toShowga() {
	    return "showgroupagency";
	}
}
