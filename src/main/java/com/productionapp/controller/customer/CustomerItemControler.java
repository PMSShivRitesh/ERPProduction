package com.productionapp.controller.customer;

import java.util.List;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

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
	public ModelAndView saveItemDetail(@ModelAttribute CustomerItems modelobj) throws Exception
	{
		loger.info("Allocate Item to customer");
		ModelAndView model=new ModelAndView("/Customer/allocateitem");
		int custId=custservice.getCustId(modelobj.getCustName());
		modelobj.setCustId(custId);
		custitemservice.allocateItem(modelobj);
		List<CustomerItems>custitemlst=custitemservice.getCustomerItems(custId);
		model.addObject("custName",modelobj.getCustName());
		model.addObject("custitemlst",custitemlst);
		return model;
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
	
	
	@RequestMapping("/getJsonItemrate")
	public  String  getJsonItemrate(@RequestParam(value="itemCode")String itemCode ,@RequestParam(value="custName")String custName) throws Exception
	{
		loger.info("Get Customer Item Rate");
		int custId=custservice.getCustId(custName);
		List lst=custitemservice.getCustItemRate(custId, itemCode);
	
		Gson gson = new Gson();
	    String json = gson.toJson(lst); 
		
		
		return json;
	}


}
