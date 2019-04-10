package com.hkdp.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hkdp.po.Ticket;
import com.hkdp.po.User;
import com.hkdp.service.TicketRefundService;

@Controller
public class TicketRefundController {
	@Autowired
	private TicketRefundService ticketrefundservice;
	
	@RequestMapping("/toFindTicketPage")
	public String toFindTicketPage(){
		return "FindTicketPage";
	}
	@RequestMapping("/findTicketsByIdent")
	public String findTicketsByIdent(User user,Model model){
		List<Ticket> tickets=ticketrefundservice.findTicketsByIdent(user);
		model.addAttribute("ticketlist", tickets);
		return "TicketRefund";
	}

	@RequestMapping("/deleteRefundTicket")
	@ResponseBody
	public String deleteRefundTicket(Integer id,Model model,Ticket ticket) {
		System.out.println(ticket.getO_orderid());
		int rows2 =ticketrefundservice.updateOrderStatus(ticket);
		int rows1 =ticketrefundservice.deleteRefundTicket(ticket);
		System.out.println(ticket.getO_orderid());
		
		if(rows1 > 0) {
			return "ok";
		}else {
			return "fail";
		}
		
	}


	
}
