package com.itheima.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.itheima.po.Hotelgroup;
import com.itheima.po.Order;

public interface HotelGroupDao {
	public List<Hotelgroup> findAllHotelGroups();//selectall
	public Integer addHotelGroup(Hotelgroup hotelgroup);//add
	public Integer updateHotelGroup(Map hotelgroupmap);//update
	public Integer delHotelGroup(Hotelgroup hotelgroup);//delete
}
