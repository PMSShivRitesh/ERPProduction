package com.productionapp.controler;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.productionapp.dao.ItemDao;
import com.productionapp.model.Item;
import com.productionapp.service.ItemService;

@RestController
public class ItemControler {
	Logger loger=Logger.getLogger(ItemControler.class);
   @Autowired
   ItemService itemservice;
	
	@RequestMapping("/itemhome")
	public ModelAndView itemhomeform() throws Exception
	{
		loger.info("Get Item Form");
		ModelAndView model=new ModelAndView("/Inventory/itemhome");
		List<Item>itemdetaillst=itemservice.getItemDetailList();
		model.addObject("itemdetaillst",itemdetaillst);
		return model;
		
	}
	
	
	@RequestMapping("/createitemhome")
	public ModelAndView createiteform() throws Exception
	{
		loger.info("Create Item Form");
		ModelAndView model=new ModelAndView("/Inventory/createitem");
		return model;
		
	}
	
	@RequestMapping("/createitem")
	public ModelAndView createitem(@ModelAttribute("mobj")Item mobj) throws Exception
	{
		loger.info("Create Item");
		ModelAndView model;
		try{
			itemservice.crateItem(mobj);
			model=new ModelAndView("/Inventory/createitem");
		}catch(Exception e){
			throw new Exception();
		}
			return model;
		
	}
	
	
	@RequestMapping(value ="/getItemCodeNameList",method = RequestMethod.GET)
	public  String getDepartment(@RequestParam("term")String term) {
		loger.info("Item Code Autocompleter");
		List<String> list=null;
		list = itemservice.getItemCodeAutoComplete(term);
		Gson gson = new Gson();
	    String json = gson.toJson(list); 
		return json;
	}
	
	
	@RequestMapping(value ="/getJsonItemdesc",method = RequestMethod.GET)
	public  String getJsonItemdesc(@RequestParam("itemCode")String itemCode) {
		loger.info("Get Item Desc");
		
		List list = itemservice.getItemCodeDetail(itemCode);
		Gson gson = new Gson();
	    String json = gson.toJson(list); 
		return json;
	}

}
