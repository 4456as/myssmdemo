package com.hkdp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hkdp.po.Airliner;
import com.hkdp.service.ManaAirlinerService;
@Controller
public class ManaAirlinerController {
	@RequestMapping("/selectAirliner")
	public String toSelectAirliner(){
		return "mzh/selectAirliner";
	}
	@RequestMapping("/insertAirliner")
	public String toInsertAirliner(){
		return "mzh/insertAirliner";
	}
	@RequestMapping("/updateAirliner")
	public String toUpdateAirliner(){
		return "mzh/updateAirliner";
	}
	@RequestMapping("/deleteAirliner")
	public String toDeleteAirliner(){
		return "mzh/deleteAirliner";
	}
	@Autowired
	private ManaAirlinerService manaAirlinerService;
	@RequestMapping("/select_Airliner")
	public String selectAirliner(Airliner airliner,Model model) {
		String plane_id=airliner.getPlane_id();
		Airliner airliner1=manaAirlinerService.selecAirliner(plane_id);
		if(airliner1!=null){
		model.addAttribute("airliner",airliner1);
		return "mzh/selectAirlinerResult";
		}
		else{
			return "mzh/errorPage";
		}
		
	}
	@RequestMapping("/insert_Airliner")
	public String insertAirliner(Airliner airliner) {
		manaAirlinerService.addAirliner(airliner);
		return "mzh/success";
		
	}
	@RequestMapping("/update_Airliner")
	public String updateAirliner(Airliner airliner) {
		manaAirlinerService.updateAirliner(airliner);;
		return "mzh/success";
		
	}
	@RequestMapping("/delete_Airliner")
	public String deleteAirliner(Airliner airliner) {
		String plane_id=airliner.getPlane_id();
		manaAirlinerService.deleteAirliner(plane_id);
		return "mzh/success";
		
	}
	
}
