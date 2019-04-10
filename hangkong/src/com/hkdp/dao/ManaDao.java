package com.hkdp.dao;

import java.util.List;

import com.hkdp.po.Manager;
import com.hkdp.po.User;


public interface ManaDao {
//管理员登录+用户信息管理   
	public Manager getMana(Manager mana);
	public List<User> getUserList();
	public User getUser(User user);
	public List<User> getUser1(User user);
	public int deleteUser(User user);
	public int updateUser(User user);
	public int addUser(User user);
	
}
