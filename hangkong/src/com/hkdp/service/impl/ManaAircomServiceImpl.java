package com.hkdp.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hkdp.dao.ManaAircomDao;
import com.hkdp.po.Aircom;
import com.hkdp.service.ManaAircomService;
@Service
@Transactional
public class ManaAircomServiceImpl implements ManaAircomService {

	@Autowired
	private ManaAircomDao manaAircomDao;
	public Aircom selectAircom(String com_id) {
		return this.manaAircomDao.selectAircom(com_id);
	}

	public void addAircom(Aircom aircom) {
		manaAircomDao.addAircom(aircom);

	}

	public void updateAircom(Aircom aircom) {
		manaAircomDao.updateAircom(aircom);

	}

	public void deleteAircom(String com_id) {
		manaAircomDao.deleteAircom(com_id);

	}

}
