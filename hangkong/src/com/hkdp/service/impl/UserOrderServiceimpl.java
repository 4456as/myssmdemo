package com.hkdp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hkdp.dao.UserOrderDao;
import com.hkdp.po.Order;
import com.hkdp.po.User;
import com.hkdp.service.UserOrderService;
@Service
public class UserOrderServiceimpl implements UserOrderService {
	@Autowired
	private UserOrderDao userOrderDao;
	public List<Order> selectOrderList(User user){
		return userOrderDao.selectOrderList(user);
	}
	public int deleteOrder(Integer order_id) {
		return userOrderDao.deleteOrder(order_id);
	}
	public int deleteOrderauto() {
		return userOrderDao.deleteOrderauto();
	}

}
