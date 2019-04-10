package com.hkdp.dao;

import com.hkdp.po.Aircom;

public interface ManaAircomDao {
	public Aircom selectAircom(String com_id);
	public void addAircom(Aircom aircom);
	public void updateAircom(Aircom aircom);
	public void deleteAircom(String com_id);
}
