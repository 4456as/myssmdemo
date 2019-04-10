package com.hkdp.po;

import java.sql.Date;
import java.sql.Time;
import java.util.List;

public class Flight {
	private String flight_id;
	private String c_comid;
	private String a_planeid;
	private String start_station;
	private String destn_station;
	private Date start_date;//发航日期   年月日
	private Time start_time;//发航时间点    时分
	private Time end_time;//到达时间点    时分
	private float time_long;
	private Integer load_num;
	private Integer odd_num;
	private double price;
	private Airliner airliner;//
	private Aircom aircom;//
	private List<Aircom> aircom1;
	public List<Aircom> getAircom1() {
		return aircom1;
	}
	public void setAircom1(List<Aircom> aircom1) {
		this.aircom1 = aircom1;
	}
	public Airliner getAirliner1() {
		return airliner1;
	}
	public void setAirliner1(Airliner airliner1) {
		this.airliner1 = airliner1;
	}
	private Airliner airliner1;
	public String getFlight_id() {
		return flight_id;
	}
	public void setFlight_id(String flight_id) {
		this.flight_id = flight_id;
	}
	public String getC_comid() {
		return c_comid;
	}
	public void setC_comid(String c_comid) {
		this.c_comid = c_comid;
	}
	public String getA_planeid() {
		return a_planeid;
	}
	public void setA_planeid(String a_planeid) {
		this.a_planeid = a_planeid;
	}
	public String getStart_station() {
		return start_station;
	}
	public void setStart_station(String start_station) {
		this.start_station = start_station;
	}
	public String getDestn_station() {
		return destn_station;
	}
	public void setDestn_station(String destn_station) {
		this.destn_station = destn_station;
	}
	public Date getStart_date() {
		return start_date;
	}
	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}
	public Time getStart_time() {
		return start_time;
	}
	public void setStart_time(Time start_time) {
		this.start_time = start_time;
	}
	public Time getEnd_time() {
		return end_time;
	}
	public void setEnd_time(Time end_time) {
		this.end_time = end_time;
	}
	public float getTime_long() {
		return time_long;
	}
	public void setTime_long(float time_long) {
		this.time_long = time_long;
	}
	public Integer getLoad_num() {
		return load_num;
	}
	public void setLoad_num(Integer load_num) {
		this.load_num = load_num;
	}
	public Integer getOdd_num() {
		return odd_num;
	}
	public void setOdd_num(Integer odd_num) {
		this.odd_num = odd_num;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public Airliner getAirliner() {
		return airliner;
	}
	public void setAirliner(Airliner airliner) {
		this.airliner = airliner;
	}
	public Aircom getAircom() {
		return aircom;
	}
	public void setAircom(Aircom aircom) {
		this.aircom = aircom;
	}
	
}
