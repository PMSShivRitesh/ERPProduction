package com.productionapp.controller.customer;

import java.util.List;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.util.JSONPObject;
import com.google.gson.Gson;
import com.productionapp.model.customer.CustomerItems;
import com.productionapp.service.customer.CustomerDetailService;
import com.productionapp.service.customer.CustomerItemService;



@RestController
public class CustomerItemControler {
	Logger loger=Logger.getLogger(CustomerItemControler.class);
	@Autowired
	CustomerItemService custitemservice;
	@Autowired
	CustomerDetailService custservice;
	@RequestMapping("/allocateitemhome")
	public ModelAndView getCustomerInputRequestForm()
	{
		loger.info("Allocate Item to csutomer");
		ModelAndView model=new ModelAndView("/Customer/allocateitem");
		return model;
	}
	
	@RequestMapping("saveCustomerItem")
	public String saveItemDetail(@RequestBody CustomerItems modelobj) throws Exception
	{
		loger.info("Allocate Item to customer");
		ModelAndView model=new ModelAndView("/Customer/allocateitem");
		int custId=custservice.getCustId(modelobj.getCustName());
		modelobj.setCustId(custId);
		custitemservice.allocateItem(modelobj);
		List<CustomerItems>custitemlst=custitemservice.getCustomerItems(custId);
		Gson json=new Gson();
		String gson=json.toJson(custitemlst);
		//model.addObject("custName",modelobj.getCustName());
		//model.addObject("custitemlst",custitemlst);
		return gson;
	}
	@RequestMapping("/checkcustitemexist")
	 public  String checkdocumentexist(@RequestParam(value="custName")String custName,@RequestParam(value="itemCode") String itemCode)
	{
		loger.info("check customer Item exist or not");
		int custId=custservice.getCustId(custName);
		boolean flag=false;
		flag=custitemservice.checkcustitemexist(custId,itemCode);
		String returnText=null;
	        if(flag){
	        
	        	//cpservice.savecustProcessRate(custprocessrateobj);
	            returnText = "Item Exists " +itemCode;
	        }else{
	            returnText = "1";
	        }
	       
	        Gson gson=new Gson();
			String json=gson.toJson(returnText);
			return json;
	  
	}
	
	@RequestMapping("getCustomerAllocatedItem")
	public String getCustomerAllocatedItem(@RequestBody CustomerItems modelobj) throws Exception
	{
		loger.info("get allocated items");
		
		int custId=custservice.getCustId(modelobj.getCustName());
		modelobj.setCustId(custId);
		
		List<CustomerItems>custitemlst=custitemservice.getCustomerItems(custId);
		Gson json=new Gson();
		String gson=json.toJson(custitemlst);
		//model.addObject("custName",modelobj.getCustName());
		//model.addObject("custitemlst",custitemlst);
		return gson;
	}
	
	@RequestMapping("/getcustItemcodelist")
	public  String  getgetcustItemcodelist(@RequestParam(value="custName")String custName) throws Exception
	{
		loger.info("Get Customer Item Codes");
		int custId=custservice.getCustId(custName);
		List<CustomerItems>itemcodelst=custitemservice.getCustomerItems(custId);
	
		Gson gson = new Gson();
	    String json = gson.toJson(itemcodelst); 
		
		return json;
	}
	
	
	@RequestMapping("/getItemrate")
	public  String  getJsonItemrate(@RequestParam(value="itemCode")String itemCode ,@RequestParam(value="custName")String custName) throws Exception
	{
		loger.info("Get Customer Item Rate");
		int custId=custservice.getCustId(custName);
		String rate=custitemservice.getCustItemRate(custId, itemCode);
	
		Gson gson = new Gson();
	    String json = gson.toJson(rate); 
		
		
		return json;
	}
	
	// deepak change
	@RequestMapping("/deleteCustomerItem")
	public  String deletecustomercontactpeople(@RequestParam(value="custitemid")String custitemid)
	{
		custitemservice.deleteCustomerItem(Integer.parseInt(custitemid));
				 return "deleted";
	}


}
