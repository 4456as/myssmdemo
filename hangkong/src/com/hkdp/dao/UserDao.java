package com.hkdp.dao;

import java.util.List;

import com.hkdp.po.User;

public interface UserDao {
//用户登录+个人信息查询操作   
	public User getUser(User user);
	public int addUser(User user);
	public int updateUser(User user);
	public User selectUser(User user);
	public int updatePassword(User user);
	public int updateBalance(User user);
	public User getBalance(User user);
}
