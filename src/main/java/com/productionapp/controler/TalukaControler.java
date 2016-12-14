package com.productionapp.controler;

import java.util.List;
import java.util.Map;

import javax.sound.midi.MidiDevice.Info;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.productionapp.model.Taluka;
import com.productionapp.service.CountryService;
import com.productionapp.service.TalukaService;

@RestController
public class TalukaControler {
	@Autowired
	CountryService cservice;
	@Autowired
	TalukaService tservice;
	final Logger logger = Logger.getLogger(TalukaControler.class);
	@RequestMapping("/talukahome")
	public ModelAndView getTalukaForm(){
		logger.info("get Taluka Form");
		 ModelAndView model=new ModelAndView("/Comman/talukahome");
		 Map<String,String> countryllst=cservice.getCountryListForDropdown();
			model.addObject("countryllst",countryllst);
	
		return model;
	}
	
	@RequestMapping("/saveTaluka")
	public ModelAndView saveTaluka(@ModelAttribute("addressobj")Taluka taluka)
	{
		logger.info("In Controler--save taluka");
		ModelAndView model=new ModelAndView("/Comman/talukahome");
		String msg="Error";
		Map<String,String> countryllst=cservice.getCountryListForDropdown();
		model.addObject("countryllst",countryllst);
		tservice.saveTaluka(taluka);
		List<Taluka>talukalst=tservice.getTalukaListByDistrict(taluka.getDistrictId());
		model.addObject("talukalst",talukalst);
		
		 return model;
	}
	
	@RequestMapping("/talukalistbydistrict")
	public ModelAndView getTalukaListByDistrictForm(){
		logger.info("Taluka Controler---get Taluka List Existing In District Form");
		ModelAndView model=new ModelAndView("/Comman/talukalistbydistrict");
		Map<String,String> countryllst=cservice.getCountryListForDropdown();
		model.addObject("countryllst",countryllst);
		return model;
	}
	
	
	@RequestMapping("/getTalukaList")
	public ModelAndView getTalukaList(@RequestParam(value="districtId")String districtid){
		logger.info("Taluka Controler---get Taluka List Existing In District");
		ModelAndView model=new ModelAndView("/Comman/talukalistbydistrict");
		Map<String,String> countryllst=cservice.getCountryListForDropdown();
		model.addObject("countryllst",countryllst);
		
		List<Taluka>talukalst=tservice.getTalukaListByDistrict(Integer.parseInt(districtid));
		model.addObject("talukalst",talukalst);
		return model;
	}
	
	@RequestMapping("/deletetaluka")
	public String deletetaluka(@RequestParam("dname")String districtid,@RequestParam("tname")String talukaname){
		logger.info("Controler --- Delete Taluka");
		tservice.deleteTaluka(0, talukaname);
		return "";
	}
	
	@RequestMapping("/getJsonTalukaList")
	public  String getJsonTalukaList(@RequestParam(value="name")String district) 
	{
		logger.info("Controler --- Get taluka List in json format");
		List<Taluka>talukalst=tservice.getTalukaListByDistrict(Integer.parseInt(district));
		Gson gson=new Gson();
		String json=gson.toJson(talukalst);
		return json;
	}
	
}
