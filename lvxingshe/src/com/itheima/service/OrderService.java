package com.itheima.service;

import java.util.List;
import java.util.Map;

import com.itheima.po.Order;

public interface OrderService {
	public List<Order> findAllOrders();
	public Integer updateOrders(Order orders);
	public Integer delOrders(Order orders);
}
