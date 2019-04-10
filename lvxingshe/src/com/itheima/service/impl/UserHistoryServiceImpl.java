package com.itheima.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.itheima.dao.UserHistoryDao;
import com.itheima.po.Travelgroup;
import com.itheima.po.User;
import com.itheima.service.UserHistoryService;

@Service("userHistoryService")
@Transactional
public class UserHistoryServiceImpl implements UserHistoryService {
	@Autowired
	private UserHistoryDao userHistoryDao;
	
	@Override
	public User findUserGroup(Integer userid) {
		User user_group=this.userHistoryDao.findUserGroup(userid);
		return user_group;
	}

	@Override
	public User findUserOrder(Integer userid) {
		User user_order=this.userHistoryDao.findUserOrder(userid);
		return user_order;
	}

	@Override
	public User findUserScenery(Integer userid) {
		User user_scen=this.userHistoryDao.findUserScenery(userid);
		return user_scen;
	}

	@Override
	public Travelgroup findGroupAgency(Integer groupid) {
		Travelgroup group_agen=this.userHistoryDao.findGroupAgency(groupid);
		return group_agen;
	}

}
