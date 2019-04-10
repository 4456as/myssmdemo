package com.hkdp.po;

import java.sql.Date;
import java.sql.Timestamp;

public class Order {
	private String order_id;
	private String u_userid;
	private String f_flightid;
	private Timestamp order_time;//年月日时分
	private Integer status;
	private User user;
	private Flight flight;
	public String getOrder_id() {
		return order_id;
	}
	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}
	public String getU_userid() {
		return u_userid;
	}
	public void setU_userid(String u_userid) {
		this.u_userid = u_userid;
	}
	public String getF_flightid() {
		return f_flightid;
	}
	public void setF_flightid(String f_flightid) {
		this.f_flightid = f_flightid;
	}
	public Timestamp getOrder_time() {
		return order_time;
	}
	public void setOrder_time(Timestamp order_time) {
		this.order_time = order_time;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Flight getFlight() {
		return flight;
	}
	public void setFlight(Flight flight) {
		this.flight = flight;
	}
	
}
