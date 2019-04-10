package com.hkdp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hkdp.dao.FlightOrderDao;
import com.hkdp.po.Flight;
import com.hkdp.po.Order;
import com.hkdp.po.Ticket;
import com.hkdp.po.User;
import com.hkdp.service.FlightOrderService;

@Service("FlightOrderService")
@Transactional
public class FlightOrderServiceImpl implements FlightOrderService {
	@Autowired
	private FlightOrderDao flightOrderDao;
	
	//查询航班
	@Override
	public List<Flight> queryFlights(Flight flight) {
		List<Flight> flights=this.flightOrderDao.queryFlights(flight);
		return flights;
	}
	//生成订单
	@Override
	public Integer generOrder(Order order) {
		Integer raws=this.flightOrderDao.generOrder(order);
		return raws;
	}
	//支付
	@Override
	public Integer payOrder(Order order) {
		Integer raws=this.flightOrderDao.payOrder(order);
		return raws;
	}
	//更新余票
	@Override
	public Integer updateOddNum(Order order) {
		Integer raws=this.flightOrderDao.updateOddNum(order);
		return raws;
	}
	@Override
	public Integer generTicket(Ticket ticket) {
		Integer raws=this.flightOrderDao.generTicket(ticket);
		return raws;
	}
	
}
