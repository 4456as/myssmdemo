package com.itheima.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.itheima.dao.HotelGroupDao;
import com.itheima.po.Hotelgroup;
import com.itheima.service.HotelGroupService;

@Service("hotelGroupService")
@Transactional
public class HotelGroupServiceImpl implements HotelGroupService {
	@Autowired
	private HotelGroupDao hotelGroupDao;
	
	@Override
	public List<Hotelgroup> findAllHotelGroups() {
		List<Hotelgroup> listhotelgroups = this.hotelGroupDao.findAllHotelGroups();
		return listhotelgroups;
	}//查
	@Override
	public Integer addHotelGroup(Hotelgroup hotelgroup) {
		Integer raws=this.hotelGroupDao.addHotelGroup(hotelgroup);
		return raws;
	}//增
	@Override
	public Integer updateHotelGroup(Map hotelgroupmap) {
		Integer raws=this.hotelGroupDao.updateHotelGroup(hotelgroupmap);
		return raws;
	}//改
	@Override
	public Integer delHotelGroup(Hotelgroup hotelgroup) {
		Integer raws = this.hotelGroupDao.delHotelGroup(hotelgroup);
		return raws;
	}//删

}
