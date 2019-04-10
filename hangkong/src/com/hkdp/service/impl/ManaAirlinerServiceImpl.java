package com.hkdp.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hkdp.dao.ManaAirlinerDao;
import com.hkdp.po.Airliner;
import com.hkdp.service.ManaAirlinerService;
@Service
@Transactional
public class ManaAirlinerServiceImpl implements ManaAirlinerService {

	@Autowired
	private ManaAirlinerDao manaAirlinerDao;
	public Airliner selecAirliner(String plane_id) {
		
		return this.manaAirlinerDao.selectAirliner(plane_id);
	}

	public void addAirliner(Airliner airliner) {
		manaAirlinerDao.addAirliner(airliner);

	}

	public void updateAirliner(Airliner airliner) {
		manaAirlinerDao.updateAirliner(airliner);

	}

	public void deleteAirliner(String plane_id) {
		manaAirlinerDao.deleteAirliner(plane_id);

	}

}
