package com.hkdp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hkdp.dao.UserDao;
import com.hkdp.po.User;
import com.hkdp.service.UserService;
@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDao userdao;
	@Override
	public User getUser(User user) {
		 return userdao.getUser(user);//查询信息
	}
	@Override
	public int addUser(User user) {
		return userdao.addUser(user);
	}
	@Override
	public int updateUser(User user) {
		return userdao.updateUser(user);
	}
	@Override
	public User selectUser(User user) {
		return userdao.selectUser(user);
	}
	@Override
	public int updatePassword(User user) {
		return userdao.updatePassword(user);
	}
	@Override
	public int updateBalance(User user) {
		return userdao.updateBalance(user);
	}
	@Override
	public User getBalance(User user) {
		return userdao.getBalance(user);
	}

}
