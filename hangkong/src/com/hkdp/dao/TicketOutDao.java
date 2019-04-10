package com.hkdp.dao;

import java.util.List;

import com.hkdp.po.Ticket;
import com.hkdp.po.User;

public interface TicketOutDao {
//互联网终端取票   
	public User findUserByIdent(String ident_id);
	public List<Ticket> findTicketById(User user);
	public Integer outTicket(Ticket ticket);
	public Integer changeOrderStatus(Ticket ticket);
}
