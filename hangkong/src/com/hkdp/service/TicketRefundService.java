package com.hkdp.service;

import java.util.List;

import com.hkdp.po.Ticket;
import com.hkdp.po.User;

public interface TicketRefundService {
	
	public List<Ticket> findTicketsByIdent(User user);
	public int deleteRefundTicket(Ticket ticket);
	public int updateOrderStatus(Ticket ticket);
}
