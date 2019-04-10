package com.itheima.po;

import java.util.List;

public class Travelgroup {
	private Integer groupid;
	private String groupname;
	private Integer grouptel;
	private Integer agen_id;
	private String startspot;
	private double price;
	private Integer sce_id;
	private Integer maxpeople;
	private Integer surpeople;
	private TravelAgency travelagency;
	public Integer getGroupid() {
		return groupid;
	}
	public void setGroupid(Integer groupid) {
		this.groupid = groupid;
	}
	public String getGroupname() {
		return groupname;
	}
	public void setGroupname(String groupname) {
		this.groupname = groupname;
	}
	public Integer getGrouptel() {
		return grouptel;
	}
	public void setGrouptel(Integer grouptel) {
		this.grouptel = grouptel;
	}
	public Integer getAgen_id() {
		return agen_id;
	}
	public void setAgen_id(Integer agen_id) {
		this.agen_id = agen_id;
	}
	public String getStartspot() {
		return startspot;
	}
	public void setStartspot(String startspot) {
		this.startspot = startspot;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public Integer getSce_id() {
		return sce_id;
	}
	public void setSce_id(Integer sce_id) {
		this.sce_id = sce_id;
	}
	public Integer getMaxpeople() {
		return maxpeople;
	}
	public void setMaxpeople(Integer maxpeople) {
		this.maxpeople = maxpeople;
	}
	public Integer getSurpeople() {
		return surpeople;
	}
	public void setSurpeople(Integer surpeople) {
		this.surpeople = surpeople;
	}
	public TravelAgency getTravelagency() {
		return travelagency;
	}
	public void setTravelagency(TravelAgency travelagency) {
		this.travelagency = travelagency;
	}
	@Override
	public String toString() {
		return "Travelgroup [groupid=" + groupid + ", groupname=" + groupname + ", grouptel=" + grouptel + ", agen_id="
				+ agen_id + ", startspot=" + startspot + ", price=" + price + ", sce_id=" + sce_id + ", maxpeople="
				+ maxpeople + ", surpeople=" + surpeople + "]";
	}
	
}
