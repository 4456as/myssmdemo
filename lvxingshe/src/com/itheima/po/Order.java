package com.itheima.po;

public class Order {
	private Integer orderid;
	private Integer group_id;
	private Integer user_id;
	public Integer getOrderid() {
		return orderid;
	}
	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}
	public Integer getGroup_id() {
		return group_id;
	}
	public void setGroup_id(Integer group_id) {
		this.group_id = group_id;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	@Override
	public String toString() {
		return "Order [orderid=" + orderid + ", group_id=" + group_id + ", user_id=" + user_id + "]";
	}
}
