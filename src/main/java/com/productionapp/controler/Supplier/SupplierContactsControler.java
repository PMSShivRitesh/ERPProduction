package com.productionapp.controler.Supplier;

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
import com.productionapp.model.SupplierConatactPersions;
import com.productionapp.service.SupplierContactsService;

@RestController
public class SupplierContactsControler {
	Logger loger=Logger.getLogger(SupplierContactsControler.class);
	@Autowired
	SupplierContactsService suppcontactservice;
	

	@RequestMapping("/addSupplierContactPersions")
	public  ModelAndView addSupplierContactPersions(@ModelAttribute("suppliercontacts")SupplierConatactPersions supplierconatcts) throws Exception
	{
		ModelAndView model;
		try{
		
		loger.info("add supplier contact persions");
		List<SupplierConatactPersions> suppconatctlst=new LinkedList<SupplierConatactPersions>();
		
		model=new ModelAndView("/Supplier/addsuppcontactpeople");
		suppcontactservice.saveContacts(supplierconatcts);
		suppconatctlst=suppcontactservice.getSuppConatacts(supplierconatcts.getSuppId());
		model.addObject("suppId",supplierconatcts.getSuppId());
		model.addObject("suppconatctlst",suppconatctlst);
		
		}catch(Exception e){
			throw new Exception();
		}
		
		 return model;
	}
	
	
	
	@RequestMapping("/checksuppcontactpersionexist")
	 public String checksupplierexist(@RequestParam(value="suppId")String suppId,@RequestParam(value="contactPersionName")String contactPersionName) throws Exception
	{
		boolean flag=false;
		String json;
		try{
		loger.info("Check contact persion exist");
		flag=suppcontactservice.checksuppnameexist(Integer.parseInt(suppId), contactPersionName);
		String returnText=null;
	        if(flag){
	        
	            returnText = "Name Exists : "+contactPersionName;
	        }else{
	            returnText = "1";
	        }
	       
	        Gson gson=new Gson();
			json=gson.toJson(returnText);
		}catch(Exception e){
			throw new Exception();
		}
			return json;
	  
	}
	
	
	
	@RequestMapping("/deletesuppcontactpersion")
	 public String deletesuppcontactpersion(@RequestParam(value="suppConatactId")String suppConatactId) throws Exception
	{
		boolean flag=false;
		String json;
		try{
		loger.info("delete conatact persion");
		flag=suppcontactservice.deleteSuppContact(Integer.parseInt(suppConatactId));
		
		}catch(Exception e){
			throw new Exception();
		}
		return null;
	
	
	}
}
