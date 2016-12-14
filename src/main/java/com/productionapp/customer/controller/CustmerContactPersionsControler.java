package com.productionapp.customer.controller;

import java.util.LinkedList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.productionapp.customer.model.CustomerContactPersions;
import com.productionapp.customer.service.CustmerContactPersionsService;



@RestController
public class CustmerContactPersionsControler {

	@Autowired
	CustmerContactPersionsService custcontactpersionservice;
    private Logger logger=Logger.getLogger(CustomerDetailControler.class);
    
    @RequestMapping("/checkcontactpersion")
	 public String checkcontactpersion(@RequestParam(value="custId")String custId,@RequestParam(value="cpersionname") String cpersionname)
	{
		boolean flag=false;
		flag=custcontactpersionservice.checkContactPersionExist(Integer.parseInt(custId),cpersionname);
		String returnText=null;
	        if(flag){
	        
	        	//cpservice.savecustProcessRate(custprocessrateobj);
	            returnText = "Contact Persion Name Exists " ;
	        }else{
	            returnText = "1";
	        }
	       
	        Gson gson=new Gson();
			String json=gson.toJson(returnText);
			return json;
	  
	}
	@RequestMapping("/addCustomerContactPersions")
	public  ModelAndView saveCustomerContactPersion(@ModelAttribute("customerconatctpersionobj")CustomerContactPersions custcontactmodel)
	{
			logger.info("Save Customer Contact Persion");
			List<CustomerContactPersions> custconatctlst=new LinkedList<CustomerContactPersions>();
			ModelAndView model = null;
			model=new ModelAndView("/Customer/addContactPersions");
			
				custcontactpersionservice.saveCustomerContactPersions(custcontactmodel);
				custconatctlst=custcontactpersionservice.getCustomerContactPersionList(custcontactmodel.getCustId());
				model.addObject("custId",custcontactmodel.getCustId());
				model.addObject("custconatctpeoplelst",custconatctlst);
				
		
		
		 return model;
	}
	
	

	@RequestMapping("/deletecustomercontactpeople")
	public  String deletecustomercontactpeople(@RequestParam(value="cnpersionid")String cnpersionid)
	{
				custcontactpersionservice.deleteCustomerContactPersion(Integer.parseInt(cnpersionid));
				 return "deleted";
	}
	
	
}
