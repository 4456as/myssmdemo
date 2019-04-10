package com.hkdp.service;

import java.util.List;

import com.hkdp.po.Ticket;
import com.hkdp.po.User;

public interface TicketOutService {
	
	public User findUserByIdent(String ident_id);
	public List<Ticket> findTicketById(User user);
	public Integer outTicket(Ticket ticket);
	public Integer changeOrderStatus(Ticket ticket);
}
