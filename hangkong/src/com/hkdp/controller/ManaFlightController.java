package com.hkdp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hkdp.po.Flight;
import com.hkdp.service.ManaFlightService;

@Controller
public class ManaFlightController {
	@Autowired
	private ManaFlightService manaFlightService;
	
	@RequestMapping(value="/main",method=RequestMethod.GET)
	public String toMain(){
		return "mzh/main";
	}
	@RequestMapping("/selectFlight")
	public String toSelectFlight(){
		return "mzh/selectFlight";
	}
	@RequestMapping("/insertFlight")
	public String toInsertFlight(){
		return "mzh/insertFlight";
	}
	@RequestMapping("/updateFlight")
	public String toUpdateFlight(){
		return "mzh/updateFlight";
	}
	@RequestMapping("/deleteFlight")
	public String toDeleteFlight(){
		return "mzh/deleteFlight";
	}
	@RequestMapping("/selectAircomByFlight1")
	public String toSelectAircomByFlight(){
		return "mzh/selectAircomByFlight";
	}
	@RequestMapping("/selectAirlinerByFlight1")
	public String toSelectAirlinerByFlight(){
		return "mzh/selectAirlinerByFlight";
	}
	
	@RequestMapping("/select_Flight")
	public String selectFlight(Flight flight,Model model) {
		String flight_id=flight.getFlight_id();
		Flight flight1=manaFlightService.selectFlight(flight_id);
		if(flight1!=null){
		model.addAttribute("flight",flight1);
		return "mzh/selectFlightResult";
		}
		else{
			return "mzh/errorPage";
		}
		
	}
	@RequestMapping(value="/insert_Flight",method=RequestMethod.POST)
	public String insertFlight(Model model,Flight flight) {
		
		if(flight !=null){
		System.out.println(flight.getDestn_station());
		System.out.println(flight.getEnd_time());
		manaFlightService.addFlight(flight);
		return "mzh/success";
		}
		return "mzh/errorPage";
		
		
	}
	@RequestMapping("/update_Flight")
	public String updateFlight(Flight flight) {
		manaFlightService.updateFlight(flight);
		return "mzh/success";
		
	}
	@RequestMapping("/delete_Flight")
	public String deleteFlight(Flight flight) {
		String flight_id=flight.getFlight_id();
		manaFlightService.deleteFlight(flight_id);
		return "mzh/success";
		
	}
	@RequestMapping("/selectAircomByFlight2")
	public String selectAircomByFlight(Flight flight,Model model) {
		String flight_id=flight.getFlight_id();
		Flight flight1=manaFlightService.selectAircomByFlight(flight_id);
		if(flight1!=null){
		model.addAttribute("flight",flight1);
		return "mzh/selectAircomByFlightResult";
		}
		else{
			return "mzh/errorPage";
		}
	}
	@RequestMapping("/selectAirlinerByFlight2")
	public String selectAirlinerByFlight(Flight flight,Model model) {
		String flight_id=flight.getFlight_id();
		Flight flight1=manaFlightService.selectAirlinerByFlight(flight_id);
		if(flight1!=null){
		model.addAttribute("flight",flight1);
		return "mzh/selectAirlinerByFlightResult";
		}
		else{
			return "mzh/errorPage";
		}
		
	}
}
