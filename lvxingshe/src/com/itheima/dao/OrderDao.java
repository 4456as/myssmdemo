package com.itheima.dao;

import java.util.List;
import java.util.Map;

import com.itheima.po.Hotelgroup;
import com.itheima.po.Order;

public interface OrderDao {
	public List<Order> findAllOrders();//selectall
	//public Integer addOrders(Hotelgroup hotelgroup);//add
	public Integer updateOrders(Order orders);//update
	public Integer delOrders(Order orders);//delete
}
