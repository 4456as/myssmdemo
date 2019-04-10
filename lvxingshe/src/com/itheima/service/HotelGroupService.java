package com.itheima.service;

import java.util.List;
import java.util.Map;

import com.itheima.po.Hotelgroup;

public interface HotelGroupService {
	public List<Hotelgroup> findAllHotelGroups();
	public Integer addHotelGroup(Hotelgroup hotelgroup);
	public Integer updateHotelGroup(Map hotelgroupmap);
	public Integer delHotelGroup(Hotelgroup hotelgroup);
}
