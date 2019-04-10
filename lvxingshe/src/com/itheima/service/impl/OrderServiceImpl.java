package com.itheima.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.itheima.dao.OrderDao;
import com.itheima.po.Order;
import com.itheima.service.OrderService;

@Service("orderService")
@Transactional
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderDao orderDao;
	@Override
	public List<Order> findAllOrders(){
		List<Order> listorders = this.orderDao.findAllOrders();
		return listorders;
	}//查
	@Override
	public Integer updateOrders(Order orders) {
		Integer raws=this.orderDao.updateOrders(orders);
		return raws;
	}//改
	@Override
	public Integer delOrders(Order orders) {
		Integer raws=this.orderDao.delOrders(orders);
		return raws;
	}//删
}
