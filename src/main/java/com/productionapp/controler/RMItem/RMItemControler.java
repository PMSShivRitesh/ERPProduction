package com.productionapp.controler.RMItem;

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
import com.productionapp.model.RMItem.RMItem;


@Controller
public class RMItemControler {
	@Autowired
	//InventoryRmService inventoryrmservice;
	
	@RequestMapping("/rmstock")
	public ModelAndView getrmstockform()
	{
			ModelAndView model=new ModelAndView("/Inventory/rmstockdetail");
			List<RMItem>allrmstocklst=null;//inventoryrmservice.getallRMItemStock();
			model.addObject("allrmstocklst",allrmstocklst);
			return model;
		
	}
	
	

	/*@RequestMapping("/addrmitemstockRequest")
	public ModelAndView additemstockdetailform()
	{
			ModelAndView model=new ModelAndView("/Inventory/addrmitemstock");
			
			return model;
		
	}

	@RequestMapping("/addrmitemstock")
	public ModelAndView additemdetailform(@ModelAttribute("mobj")InventoryRMModel mobj)
	{
			inventoryrmservice.addrmitemstock(mobj);
			ModelAndView model=new ModelAndView("/Inventory/rmstockdetail");
			List<InventoryRMModel>allrmstocklst=inventoryrmservice.getallRMItemStock();
			model.addObject("allrmstocklst",allrmstocklst);
			
			return model;
		
	}
	
	
	@RequestMapping("/getrminventoryitemcodeforpo")
	public @ResponseBody String getrminventoryitemcodeforp() throws SQLException
	{
		List<InventoryRMModel>allrmstocklst=inventoryrmservice.getitemcodeforpo();
		Gson gson = new Gson();
	    String json = gson.toJson(allrmstocklst);  
		
		return json;
	}*/
	

}
