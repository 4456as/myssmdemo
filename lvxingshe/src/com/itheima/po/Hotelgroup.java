package com.itheima.po;

public class Hotelgroup {
	private Integer group_id;
	private Integer hotel_id;
	public Integer getGroup_id() {
		return group_id;
	}
	public void setGroup_id(Integer group_id) {
		this.group_id = group_id;
	}
	public Integer getHotel_id() {
		return hotel_id;
	}
	public void setHotel_id(Integer hotel_id) {
		this.hotel_id = hotel_id;
	}
	@Override
	public String toString() {
		return "Hotelgroup [group_id=" + group_id + ", hotel_id=" + hotel_id + "]";
	}
}
