package com.itheima.po;

import java.util.List;

public class User {
	private Integer userid;
	private String username;
	private String password;
	private String cardid;
	private String sex;
	private String realname;
	private Integer age;
	private String local;
	private Integer tel;
	private List<Travelgroup> travelgrouplist;
	private List<Order> orderlist;
	private List<ScenicSpot> scenicspotlist;
	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCardid() {
		return cardid;
	}

	public void setCardid(String cardid) {
		this.cardid = cardid;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getLocal() {
		return local;
	}

	public void setLocal(String local) {
		this.local = local;
	}

	public Integer getTel() {
		return tel;
	}

	public void setTel(Integer tel) {
		this.tel = tel;
	}

	public List<Travelgroup> getTravelgrouplist() {
		return travelgrouplist;
	}

	public void setTravelgrouplist(List<Travelgroup> travelgrouplist) {
		this.travelgrouplist = travelgrouplist;
	}
	
	public List<ScenicSpot> getScenicspotlist() {
		return scenicspotlist;
	}

	public void setScenicspotlist(List<ScenicSpot> scenicspotlist) {
		this.scenicspotlist = scenicspotlist;
	}

	public List<Order> getOrderlist() {
		return orderlist;
	}

	public void setOrderlist(List<Order> orderlist) {
		this.orderlist = orderlist;
	}

	@Override
	public String toString() {
		return "User [userid=" + userid + ", username=" + username + ", password=" + password +
				", cardid=" + cardid+ ", sex=" + sex + ", realname=" + realname + ", age=" + 
				age + ", local=" + local + ", tel=" + tel+ ", travelgrouplist=" 
				+ travelgrouplist + "]";
	}
}
