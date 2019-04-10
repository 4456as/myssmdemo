package com.hkdp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hkdp.po.Order;
import com.hkdp.po.Ticket;
import com.hkdp.service.TicketAlterService;

@Controller
public class TicketAlterController {
	@Autowired
	private TicketAlterService ticketAlterService;
	
	@RequestMapping("/updateTicket")
	public String toUpdateTicket() {
		return "mzh2/updateTicket";
		
	}
	@RequestMapping("/update_Ticket")
	public String updateOrder(Order order) {
		ticketAlterService.updateTicket(order);
		return "mzh2/success";
		
	}
}
