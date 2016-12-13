package com.productionapp.controler;

import java.util.List;
import java.util.Map;

import org.hibernate.criterion.Distinct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.productionapp.model.District;
import com.productionapp.model.State;
import com.productionapp.service.CountryService;
import com.productionapp.service.DistrictService;
import com.productionapp.service.StateService;

@RestController
public class DistrictControler {
	@Autowired
	CountryService cservice;
	@Autowired
	StateService sservice;
	@Autowired 
	DistrictService dservice;
	@RequestMapping("/districthome")
	public ModelAndView getDistrictForm()
	{
		ModelAndView model=new ModelAndView("/Comman/districthome");
		//List<CommanModel> districtlst =null//addressserviceobj.getDistrictList("all");
		
			Map<String,String> countryllst=cservice.getCountryListForDropdown();
			model.addObject("countryllst",countryllst);
			//model.addObject("districtlst",districtlst);
		
		
		return model;
	}
	
	@RequestMapping("/saveDistrict")
	public ModelAndView saveDistrict(@ModelAttribute("district")District district)
	{
		ModelAndView model=new ModelAndView("/Comman/districthome");
		String msg="Error";
		if(dservice.saveDistrict(district))
		{
			msg="Failed";
		}
		else
			{
				msg="Successfully Saved";
			}
		
			Map<String,String> countryllst=cservice.getCountryListForDropdown();
			model.addObject("countryllst",countryllst);
			List<District> districtlst =dservice.getDistrictListBystatename(district.getStateId());
			model.addObject("districtlst",districtlst);
			model.addObject("msg",msg);
			return model;
	}
	
	@RequestMapping("/districtSearchByState")
	public ModelAndView searchDistrictByState()
	{
		ModelAndView model=new ModelAndView("/Comman/districtSearchByState");
		//Map<String,String> countryllst=null;//cservice.getCountryListForDropdown();
		//model.addObject("countryllst",countryllst);
		return model;
	}
	
	
	
	@RequestMapping("/gateDistrictListByState")
	public ModelAndView getDistrictListByState(@RequestParam(value="stateId")String stateid)
	{
		ModelAndView model=new ModelAndView("/Comman/searchDistrictListStateForm");
		Map<String,String> countryllst=cservice.getCountryListForDropdown();
		model.addObject("countryllst",countryllst);
		List<District> districtlst =dservice.getDistrictListBystatename(Integer.parseInt(stateid));
		model.addObject("districtlst",districtlst);
		return model;
	}
	
	@RequestMapping("/deletedistrict")
	public String deleteDistrict(@RequestParam(value="sname")String statename,@RequestParam(value="dname")String dname)
	{
		String msg="";
		dservice.deleteDistrict(statename,dname);
		return msg;
	}
	
	
	@RequestMapping("/getJsonDistrictList")
	public String getJsonDistrictList(@RequestParam(value="name")String stateid)
	{
		String json="";
		System.out.print("get Distrinct in json format");
		List<District> districtlst =dservice.getDistrictListBystatename(Integer.parseInt(stateid));
		Gson gson=new Gson();
		json=gson.toJson(districtlst);
		return  json;
	}

}
