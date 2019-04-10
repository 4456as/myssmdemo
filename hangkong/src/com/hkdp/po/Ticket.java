package com.hkdp.po;

import java.sql.Time;

public class Ticket {
	private String ticket_id;
	private String o_orderid;
	private String gate_num;
	private String seat_num;
	private Time board_time;//时分
	public String getTicket_id() {
		return ticket_id;
	}
	public void setTicket_id(String ticket_id) {
		this.ticket_id = ticket_id;
	}
	public String getO_orderid() {
		return o_orderid;
	}
	public void setO_orderid(String o_orderid) {
		this.o_orderid = o_orderid;
	}
	public String getGate_num() {
		return gate_num;
	}
	public void setGate_num(String gate_num) {
		this.gate_num = gate_num;
	}
	public String getSeat_num() {
		return seat_num;
	}
	public void setSeat_num(String seat_num) {
		this.seat_num = seat_num;
	}
	public Time getBoard_time() {
		return board_time;
	}
	public void setBoard_time(Time board_time) {
		this.board_time = board_time;
	}
}
