package com.hkdp.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hkdp.dao.ManaFlightDao;
import com.hkdp.po.Flight;
import com.hkdp.service.ManaFlightService;
@Service
@Transactional
public class ManaFlightServiceImpl implements ManaFlightService {

	@Autowired
	private ManaFlightDao manaFlightDao;
	public Flight selectFlight(String flight_id) {
		return this.manaFlightDao.selectFlight(flight_id);
		
	}
	public void addFlight(Flight flight) {
		manaFlightDao.addFlight(flight);

	}

	public void updateFlight(Flight flight) {
		manaFlightDao.updateFlight(flight);

	}

	public void deleteFlight(String flight_id) {
		manaFlightDao.deleteFlight(flight_id);

	}

	public Flight selectAircomByFlight(String flight_id) {
		
		return this.manaFlightDao.selectAircomByFlight(flight_id);
	}

	public Flight selectAirlinerByFlight(String flight_id) {
		
		return this.manaFlightDao.selectAirlinerByFlight(flight_id);
	}

}
