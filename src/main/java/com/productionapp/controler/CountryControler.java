package com.productionapp.controler;

import java.sql.SQLException;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.productionapp.model.Country;
import com.productionapp.service.CountryService;


@RestController
public class CountryControler {
	
	private Logger loger=Logger.getLogger(CountryControler.class);
	@Autowired
	CountryService countryservice;
	
	@RequestMapping("/countryhome")
	public ModelAndView getCountryForm() throws Exception
	{
		loger.info("Get Countrypage");
		
		ModelAndView model=new ModelAndView("/Comman/countryhome");
		List<Country> countryllst=countryservice.getCountryList();
		try{
				model.addObject("countryllst",countryllst);
			}
		catch(Exception e)
		{
			throw new Exception();
		}
		return model;
	}
	
	@RequestMapping("/checkcountryexist")
	public String checkcountryexist(@ModelAttribute("mobj")Country mobj)
	{
		loger.info("Check Country Exist Or Not");
		String msg="";
		boolean flag=countryservice.checkCountryExist(mobj);
		if(flag){
			msg="Already Exists";
		}
		   Gson gson=new Gson();
					String json=gson.toJson(msg);
		return json;
	}
	

	@RequestMapping("/saveCountry") 
	public ModelAndView saveCountry(@ModelAttribute(value="country")Country mobj) throws Exception
	{
		ModelAndView model=new ModelAndView("/Comman/countryhome");
		try{
				countryservice.saveCountry(mobj);
				List<Country> countryllst=countryservice.getCountryList();
				model.addObject("countryllst",countryllst);
		}
		catch(Exception e){
			throw new Exception();
		}
		return model;
	}
	

	@RequestMapping("/deleteCountry")
	public String deleteCountry(@ModelAttribute(value="mobj")Country mobj ) 
	{
		String msg="msg";
		countryservice.deleteCountry(mobj);
		return msg;
	}
	

}
