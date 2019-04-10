package com.hkdp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hkdp.po.Aircom;
import com.hkdp.service.ManaAircomService;

@Controller
public class ManaAircomController {
	@Autowired
	private ManaAircomService manaAircomService;
	@RequestMapping("/selectAircom")
	public String toSelectAircom(){
		return "mzh/selectAircom";
	}
	@RequestMapping("/insertAircom")
	public String toInsertAircom(){
		return "mzh/insertAircom";
	}
	@RequestMapping("/updateAircom")
	public String toUpdateAircom(){
		return "mzh/updateAircom";
	}
	@RequestMapping("/deleteAircom")
	public String toDeleteAircom(){
		return "mzh/deleteAircom";
	}

	@RequestMapping("/select_Aircom")
	public String selectAircom(Aircom aircom,Model model) {
		String aircom_id=aircom.getCom_id();
		Aircom aircom1=manaAircomService.selectAircom(aircom_id);
		if(aircom1!=null){
		model.addAttribute("aircom",aircom1);
		return "mzh/selectAircomResult";
		}
		else{
			return "mzh/errorPage";
		}
		
	}
	@RequestMapping("/insert_Aircom")
	public String insertAircom(Aircom aircom) {
		manaAircomService.addAircom(aircom);
		return "mzh/success";
		
	}
	@RequestMapping("/update_Aircom")
	public String updateAircom(Aircom aircom) {
		manaAircomService.updateAircom(aircom);
		return "mzh/success";
		
	}
	@RequestMapping("/delete_Aircom")
	public String deleteAircom(Aircom aircom) {
		String aircom_id=aircom.getCom_id();
		manaAircomService.deleteAircom(aircom_id);
		return "mzh/success";
		
	}
}
