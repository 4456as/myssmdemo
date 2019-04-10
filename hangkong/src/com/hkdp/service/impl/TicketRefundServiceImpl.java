package com.hkdp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hkdp.dao.TicketRefundDao;
import com.hkdp.po.Order;
import com.hkdp.po.Ticket;
import com.hkdp.po.User;
import com.hkdp.service.TicketRefundService;


@Service
public class TicketRefundServiceImpl implements TicketRefundService{
	@Autowired
	private TicketRefundDao ticketrefundDao;
	
	public List<Ticket> findTicketsByIdent(User user){
		return this.ticketrefundDao.findTicketsByIdent(user);
	}
	public int deleteRefundTicket(Ticket ticket){
		return this.ticketrefundDao.deleteRefundTicket(ticket);
	}
	@Override
	public int updateOrderStatus(Ticket ticket) {
		
		return this.ticketrefundDao.updateOrderStatus(ticket);
	}
}