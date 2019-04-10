package com.hkdp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hkdp.dao.TicketOutDao;
import com.hkdp.po.Ticket;
import com.hkdp.po.User;
import com.hkdp.service.TicketOutService;
@Service
public class TicketOutServiceImpl implements TicketOutService {
	@Autowired
	private TicketOutDao ticketOutDao;
	@Override
	public User findUserByIdent(String ident_id) {
		
		return this.ticketOutDao.findUserByIdent(ident_id);
	}
	@Override
	public List<Ticket> findTicketById(User user) {
		
		return this.ticketOutDao.findTicketById(user);
	}
	@Override
	public Integer outTicket(Ticket ticket) {
		
		return this.ticketOutDao.outTicket(ticket);
	}
	@Override
	public Integer changeOrderStatus(Ticket ticket) {
		
		return this.ticketOutDao.changeOrderStatus(ticket);
	}

}
