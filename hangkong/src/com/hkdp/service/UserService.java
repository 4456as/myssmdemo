package com.hkdp.service;

import com.hkdp.po.User;

public interface UserService {
	
	public User getUser(User user);
	public int addUser(User user);
	public int updateUser(User user);
	public User selectUser(User user);
	public int updatePassword(User user);
	public int updateBalance(User user);
	public User getBalance(User user);
}
