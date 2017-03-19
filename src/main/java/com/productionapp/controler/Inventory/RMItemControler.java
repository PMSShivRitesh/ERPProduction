package com.productionapp.controler.Inventory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import java.sql.SQLException;
import java.util.*;
import com.google.gson.Gson;
import com.productionapp.model.Inventory.RMItem;
import com.productionapp.service.RMItem.RMItemService;


@Controller
public class RMItemControler {
	@Autowired
	RMItemService inventoryrmservice;
	
	@RequestMapping("/rmstock")
	public ModelAndView getrmstockform()
	{
			ModelAndView model=new ModelAndView("/Inventory/rmstockdetail");
			List<RMItem>allrmstocklst=inventoryrmservice.getRmDetailList();
			model.addObject("allrmstocklst",allrmstocklst);
			return model;
		
	}
	
	

	@RequestMapping("/addrmitemstock")
	public ModelAndView additemstockdetailform()
	{
			ModelAndView model=new ModelAndView("/Inventory/addrmitemstock");
			
			return model;
		
	}

	@RequestMapping("/addrmitem")
	public ModelAndView additemdetailform(@ModelAttribute("mobj")RMItem mobj)
	{
			inventoryrmservice.addRmItem(mobj);
			ModelAndView model=new ModelAndView("/Inventory/addrmitemstock");
			//List<InventoryRMModel>allrmstocklst=inventoryrmservice.getallRMItemStock();
		//	model.addObject("allrmstocklst",allrmstocklst);
			
			return model;
		
	}
	
	/*
	@RequestMapping("/getrminventoryitemcodeforpo")
	public @ResponseBody String getrminventoryitemcodeforp() throws SQLException
	{
		List<InventoryRMModel>allrmstocklst=inventoryrmservice.getitemcodeforpo();
		Gson gson = new Gson();
	    String json = gson.toJson(allrmstocklst);  
		
		return json;
	}*/
	

}
