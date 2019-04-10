package com.hkdp.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hkdp.dao.TicketAlterDao;
import com.hkdp.po.Order;
import com.hkdp.service.TicketAlterService;
@Service
@Transactional
public class TicketAlterServiceImpl implements TicketAlterService {

	@Autowired
	private TicketAlterDao ticketAlterDao;
	public void updateTicket(Order order) {
		ticketAlterDao.updateTicket(order);
	}
}
