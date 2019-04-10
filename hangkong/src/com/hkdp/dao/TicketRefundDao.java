package com.hkdp.dao;

import java.util.List;

import com.hkdp.po.Ticket;
import com.hkdp.po.User;

public interface TicketRefundDao {
//退票处理    
	public List<Ticket> findTicketsByIdent(User user);
	public int deleteRefundTicket(Ticket ticket);
	public int updateOrderStatus(Ticket ticket);
}
