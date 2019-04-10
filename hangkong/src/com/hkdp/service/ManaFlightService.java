package com.hkdp.service;

import com.hkdp.po.Flight;

public interface ManaFlightService {
	public Flight selectFlight(String flight_id);
	public void addFlight(Flight flight);
	public void updateFlight(Flight flight);
	public void deleteFlight(String flight_id);
	public Flight selectAircomByFlight(String flight_id);
	public Flight selectAirlinerByFlight(String flight_id);
}
