package com.itheima.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itheima.po.Manager;
import com.itheima.po.User;
import com.itheima.service.ManagerService;


@Controller
public class ManagerController {
	@Autowired
	private ManagerService managerService;
	
	@RequestMapping(value = "/mlogin.action", method = RequestMethod.POST)
	public String mlogin(Integer mid,String mpas, Model model, 
                                                          HttpSession session) {
		// 通过账号查询用户
		Manager manager = managerService.findManager(mid);
		if(mid != null && mpas.equals(manager.getMpas() )){		
			// 将对象添加到Session
			session.setAttribute("MANAGER_SESSION", manager);
			return "redirect:mloginsuccess.action";
		}
		model.addAttribute("mmsg", "账号或密码错误，请重新输入！");
		return "login";
	}
	@RequestMapping(value = "/mloginsuccess.action")
	public String toMana() {
	    return "managerhome";
	}
}
