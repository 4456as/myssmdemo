package com.hkdp.dao;

import java.util.List;

import com.hkdp.po.Order;
import com.hkdp.po.User;

public interface UserOrderDao {
	
	//查询订单
	public List<Order> selectOrderList(User user);
	public int deleteOrder(Integer order_id);
	public int deleteOrderauto();
}
