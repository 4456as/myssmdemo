package com.hkdp.dao;

import java.util.List;

import com.hkdp.po.Flight;
import com.hkdp.po.Order;
import com.hkdp.po.Ticket;

public interface FlightOrderDao {
//查询航班预定机票      王仁君
	public List<Flight> queryFlights(Flight flight);//查询航班
	public Integer generOrder(Order order);//生成订单
	public Integer payOrder(Order order);//支付
	public Integer updateOddNum(Order order);//更新余票
	public Integer generTicket(Ticket ticket);//生成机票
}
