package com.hkdp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hkdp.po.Ticket;
import com.hkdp.po.User;
import com.hkdp.service.TicketOutService;

@Controller
public class TicketOutController {

	@Autowired
	private TicketOutService ticketOutService;
	@RequestMapping(value = "/outTicketPage")
	public String outTicketPage() {
		return "ToOutTicket";
	}
	
	@RequestMapping(value = "/findUserByIdent")
	public String findUserByIdent(String ident_id,Model model) {
		 User user=ticketOutService.findUserByIdent(ident_id);
		 List<Ticket> tickets=ticketOutService.findTicketById(user);
		 model.addAttribute("tickets", tickets);
		return "OutTicket";
	}
	@RequestMapping(value = "/outTicket")
	public String outTicket(Ticket ticket) {
		Integer raws=ticketOutService.outTicket(ticket);
		Integer raws2=ticketOutService.changeOrderStatus(ticket);
		return "";
	}
	@RequestMapping(value = "/tosyOutTicketFinish")
	public String tosyOutTicketFinish() {
		return "OutTicketFinish";
	}
	
}
