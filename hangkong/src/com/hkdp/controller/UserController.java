package com.hkdp.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hkdp.po.User;
import com.hkdp.service.UserService;



@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/in")
	public String index(){
		return "ljy/login";
	}
	//控制登陆跳转
	@RequestMapping(value="/login")
	public String login(User u,HttpSession session,Model model){
		User user=new User();
		user=userService.getUser(u);
		if(user!=null) {
		if(u.getUser_id().equals(user.getUser_id())&&u.getPassword().equals(user.getPassword())){
//		if(u.getPassword().equals(user.getPassword())){	
			session.setAttribute("loginuser", user);
            return "ljy/homePage";
////		}else {//用户密码错误的情况下跳转到的页面
////			model.addAttribute("msg", "密码错误，请重新登录！");
////			return "login";	//			
//		}
		}else{//用户密码错误的情况下跳转到的页面
			 model.addAttribute("msg", "用户名或密码错误，请重新登录！");
			return "ljy/login";
		}
		}else{//用户id错误的情况下跳转到的页面
			 model.addAttribute("msg", "用户id或密码错误，请重新登录！");
			return "ljy/login";
		}
		
	}
	//注册
	@RequestMapping(value="/register")
	public String register(){
		return "ljy/register";
	}
	@RequestMapping(value="/addUser")
	public String addUser(User u,Model model) {
		int rows=userService.addUser(u);
		if(rows>0) {
		return "ljy/addUser";}
		else {
			System.out.print("错误");
			return "ljy/errorInsert";
		}
	}
	//查询个人信息
	@RequestMapping(value="/query")
	public String selectUser(Model model,HttpSession session) {
		User u=(User) session.getAttribute("loginuser");
		User user=userService.selectUser(u);
		model.addAttribute("ul", user);
		return "ljy/query";
	}
	//修改个人信息
	@RequestMapping(value="/modify")
	public String modify(Model model,HttpSession session){
		User u=(User) session.getAttribute("loginuser");
		User user=userService.selectUser(u);
		model.addAttribute("u", user);
		return "ljy/modify";
	}
	@RequestMapping(value="/updateUser")
	public String updateUser(User u,Model model) {
		int rows=userService.updateUser(u);
		if(rows>0) {
		return "redirect:/query";}
		else {
			return "ljy/errorInsert";
		}
	}
	//修改密码
	@RequestMapping(value="/password")
	public String password(Model model,HttpSession session){
		User u=(User) session.getAttribute("loginuser");
		User user=userService.selectUser(u);
		model.addAttribute("u", user);
		return "ljy/password";
	}
	@RequestMapping(value="/updatePassword")
	public String updatePassword(User u,Model model) {
		userService.updatePassword(u);
		return "ljy/homePage";
	}
	//充值
	@RequestMapping(value="/recharge")
	public String recharge(Model model,HttpSession session){
		User u=(User) session.getAttribute("loginuser");
		User user=userService.selectUser(u);
		model.addAttribute("u", user);
		return "ljy/recharge";
	}
	@RequestMapping(value="/balance")
	public String balance(User u,Model model) {
		userService.updateBalance(u);
		return "redirect:/recharge";
	}
	@RequestMapping(value="/homePage")
	public String homePage() {
		return "ljy/homePage";
	}
}
