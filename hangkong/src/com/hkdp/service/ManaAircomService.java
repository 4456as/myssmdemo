package com.hkdp.service;

import com.hkdp.po.Aircom;

public interface ManaAircomService {
	public Aircom selectAircom(String com_id);
	public void addAircom(Aircom aircom);
	public void updateAircom(Aircom aircom);
	public void deleteAircom(String com_id);
}
