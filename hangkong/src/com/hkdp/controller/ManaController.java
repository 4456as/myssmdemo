package com.hkdp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hkdp.po.Manager;
import com.hkdp.po.User;
import com.hkdp.service.ManaService;

@Controller
public class ManaController {

	@Autowired
	private ManaService manaService;
	
	@RequestMapping(value="/in1")
	public String index(){
		return "ljy/manalogin";
	}
	//控制登陆跳转
	@RequestMapping(value="/manalogin")
	public String login(Manager m,HttpSession session,Model model){
		Manager mana=new Manager();
		mana=manaService.getMana(m);
		if(mana!=null) {
		if(m.getMana_id().equals(mana.getMana_id())&&m.getMana_pword().equals(mana.getMana_pword())){
			session.setAttribute("loginmana",mana);
			return "ljy/ManaHome";

		}else{//用户密码错误的情况下跳转到的页面
			 model.addAttribute("msg", "管理员id或口令错误，请重新登录！");
			return "ljy/manalogin";
		}
		}else{//用户id错误的情况下跳转到的页面
			 model.addAttribute("msg", "管理员id或口令错误，请重新登录！");
			return "ljy/manalogin";
		}
	}
	//查询全部用户
	@RequestMapping(value="/userlist.do",method=RequestMethod.GET,produces="application/json;charset=UTF-8")
	public String userList(Model model){
		List<User> userList= manaService.getUserList();
		model.addAttribute("userlist",userList);
		return "ljy/userList";
	}
	//查询
	@RequestMapping(value="/getuser.do",method=RequestMethod.POST)
	public String getuser( User user,Model model){
		List<User> userlist=manaService.getUser1(user);
		model.addAttribute("userlist", userlist);
		return "ljy/getuser";
	}
	@RequestMapping(value="/getuser1.do",method=RequestMethod.POST)
	public String getuser1( User user,Model model){
		User userlist=manaService.getUser(user);
		model.addAttribute("ul", userlist);
		return "ljy/idgetuser";
	}
	
	//删除用户的请求
	@RequestMapping(value="/{user_id}/delete.do",method=RequestMethod.GET)
	public String delete(@PathVariable String user_id){
		User u=new User();
		String id=new String(user_id);
		u.setUser_id(id);
		manaService.deleteUser(u);
		return "redirect:/userlist.do";
	}
	
	//修改用户的请求跳转
		@RequestMapping(value="/{user_id}/update.do",method=RequestMethod.GET)
		public String update(@PathVariable String user_id,Model model){
			User u=new User();
			String id=new String(user_id);
			u.setUser_id(id);
			User user=manaService.getUser(u);
			model.addAttribute("u",user);
			return "ljy/userUpdate";
		}
		
	//修改用户的请求执行
		
		@RequestMapping(value="/doupdate.do",method=RequestMethod.POST)
		public String doupdate(@Validated User user,HttpServletRequest req){//紧跟validate之后写验证结果
			manaService.updateUser(user);
			return "redirect:/userlist.do";
		}
		
		
		//添加
				@RequestMapping(value="/adduser.do",method=RequestMethod.GET)
				public String adduser(){
					return "ljy/addUser";
				}
				
			//添加用户的请求执行
				
				@RequestMapping(value="/doadduser.do",method=RequestMethod.POST)
				public String doadduser(@Validated User user,HttpServletRequest req){//紧跟validate之后写验证结果
					manaService.addUser(user);
				return "redirect:/userlist.do";
				}
				@RequestMapping(value="/ManaHome")
				public String ManaHome() {
					return "ljy/ManaHome";
				}
				@RequestMapping(value="/selectUser")
				public String selectUser(){
					return "ljy/selectUser";
				}
}
