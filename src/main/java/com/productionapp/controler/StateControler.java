package com.productionapp.controler;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.productionapp.model.State;
import com.productionapp.service.CountryService;
import com.productionapp.service.StateService;


@RestController
public class StateControler {
	Logger loger=Logger.getLogger(StateControler.class);
	@Autowired
	CountryService cservice;
	@Autowired
	StateService sservice;
	@RequestMapping("/statehome")
	public ModelAndView getStateForm() {
		loger.info("State page");
		ModelAndView model=new ModelAndView("/Comman/statehome");
		List<State> statelst =null;
		Map<String,String> countryllst=cservice.getCountryListForDropdown();
		model.addObject("countryllst",countryllst);
		model.addObject("statelst",statelst);
		return model;
	}
	
	
	@RequestMapping("/stateSearchByCountry")
	public ModelAndView searchStateByCountryForm() 
	{
		ModelAndView model=new ModelAndView("/Comman/stateSearchByCountry");
		List<State> statelst =null;
		Map<String,String> countryllst=cservice.getCountryListForDropdown();
		model.addObject("countryllst",countryllst);
		model.addObject("statelst",statelst);
		return model;
		
		
	}
	
	@RequestMapping("/stateSearch")
	public ModelAndView searchStateByCountry(@RequestParam(value="countryId" )String countryId) 
	{
		System.out.print("Get State List Of " );
		ModelAndView model=new ModelAndView("/Comman/stateSearchByCountry");
		List<State> statelst =sservice.getAllStateList(Integer.parseInt(countryId));
		Map<String,String> countryllst=cservice.getCountryListForDropdown();
		model.addObject("countryllst",countryllst);
		model.addObject("statelst",statelst);
		
		return model;
		
		
	}
	

	@RequestMapping("/getJsonStateList")
	public String getJsonStateList(@RequestParam(value="name")String country)
	{
		
		System.out.print("get state in json format");
		List<State> countryjsonlst =sservice.getAllStateList(Integer.parseInt(country));
		Gson gson=new Gson();
		String json=gson.toJson(countryjsonlst);
		return  json;
	}
	
	

	@RequestMapping("/saveState")
	public ModelAndView saveSate(@ModelAttribute("statemodel")State stateobj) 
	{
		System.out.print("Saving test "+stateobj.getStateName());
		ModelAndView model=new ModelAndView("/Comman/statehome");
		Map<String,String> countryllst=cservice.getCountryListForDropdown();
		String msg="Error";
		if(sservice.saveState(stateobj)){
					msg="Name Exists";
		}else{
				msg="Successfully Added";
				}	
		List<State> statelst =sservice.getAllStateList(stateobj.getCountryId());
		model.addObject("countryllst",countryllst);
		model.addObject("statelst",statelst);
		model.addObject("msg",msg);
		 return model;
	}
	
	
	@RequestMapping("/deletestate")
	public String deletestate(@RequestParam(value="sname") String sname) throws SQLException
	{
		String msg="";
		sservice.deleteState(sname);
		return msg;
		
	}
	

}
