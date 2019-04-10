package com.hkdp.dao;

import com.hkdp.po.Airliner;

public interface ManaAirlinerDao {
	public Airliner selectAirliner(String plane_id);
	public void addAirliner(Airliner airliner);
	public void updateAirliner(Airliner airliner);
	public void deleteAirliner(String plane_id);
}
