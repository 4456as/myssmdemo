package com.hkdp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hkdp.dao.ManaDao;
import com.hkdp.po.Manager;
import com.hkdp.po.User;
import com.hkdp.service.ManaService;
@Service
public class ManaServiceImpl implements ManaService{
	@Autowired
	private ManaDao manadao;
	@Override
	public Manager getMana(Manager mana) {
		return manadao.getMana(mana);
	}

	@Override
	public List<User> getUserList() {
		return manadao.getUserList();
	}

	@Override
	public List<User> getUser1(User user) {
		return manadao.getUser1(user);
	}

	@Override
	public int deleteUser(User user) {
		return manadao.deleteUser(user);
	}

	@Override
	public int updateUser(User user) {
		return manadao.updateUser(user);
	}

	@Override
	public int addUser(User user) {
		return manadao.addUser(user);
	}

	@Override
	public User getUser(User user) {
		return manadao.getUser(user);
	}

}
