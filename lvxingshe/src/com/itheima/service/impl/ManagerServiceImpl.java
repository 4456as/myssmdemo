package com.itheima.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.itheima.dao.ManagerDao;
import com.itheima.po.Manager;
import com.itheima.service.ManagerService;

@Service("managerService")
@Transactional
public class ManagerServiceImpl implements ManagerService{
	@Autowired
	private ManagerDao managerDao;
	
	@Override
	public Manager findManager(Integer mid) {
		Manager manager=this.managerDao.findManager(mid);
		return manager;
	}

}
