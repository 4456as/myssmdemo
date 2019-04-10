package com.hkdp.service;

import com.hkdp.po.Airliner;

public interface ManaAirlinerService {
	public Airliner selecAirliner(String plane_id);
	public void addAirliner(Airliner airliner);
	public void updateAirliner(Airliner airliner);
	public void deleteAirliner(String plane_id);
}
