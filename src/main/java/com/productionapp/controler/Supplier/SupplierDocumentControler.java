package com.productionapp.controler.Supplier;

import java.util.LinkedList;
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
import com.productionapp.model.SupplierDocuments;
import com.productionapp.service.DocumentService;
import com.productionapp.service.SupplierDocumetnsService;

@RestController

public class SupplierDocumentControler {
	Logger loger=Logger.getLogger(SupplierDocumentControler.class);
	@Autowired
	DocumentService docserivce;
	@Autowired
	SupplierDocumetnsService suppdocservice;
	
	@RequestMapping("/addSuppDocuments")
	public ModelAndView getAddSuppDocumentsForm(@RequestParam(value="suppId") String suppId) throws Exception
	{
		loger.info("Get Supplier Document Form");
		ModelAndView model=new ModelAndView("/Supplier/addSuppDocuments");
	
				Map<String,String> documentNamelst=docserivce.getDocumentsListForDropdown();
				model.addObject("documentNamelst",documentNamelst);
				model.addObject("suppId",suppId);
			return model;
	}
	
	@RequestMapping("/deletesuppdocument")
	public String deletesuppdocument(@RequestParam(value="suppDocId")String suppDocId) 
	{
		loger.info("Delete Supplier Documetns");
		boolean flag=false;
		System.out.println("*****************************Test In Controller**********************************************"+suppDocId);
			flag=suppdocservice.deletesuppDocuments(Integer.parseInt(suppDocId));	
		
		return "Delete Record";
	}
	
	@RequestMapping("/savesuppDocuments")
	public ModelAndView savesuppDocuments(@ModelAttribute(value="suppdocobj")SupplierDocuments suppdocobj) 
	{
		loger.info("Add Supplier Documetns");
		ModelAndView model=new ModelAndView("/Supplier/addSuppDocuments");
	
				
				suppdocservice.addSuppDocuments(suppdocobj);
				List<SupplierDocuments> suppdoclst=new LinkedList<SupplierDocuments>();
			    suppdoclst=suppdocservice.getSuppDocumentsList(suppdocobj.getSuppId());
				model.addObject("suppdoclst", suppdoclst);
				model.addObject("suppId",suppdocobj.getSuppId());
				Map<String,String> documentNamelst=docserivce.getDocumentsListForDropdown();
				model.addObject("documentNamelst",documentNamelst);
				
			return model;
	}
	
	@RequestMapping("/checksuppdocumentexist")
	 public  String checkdocumentexist(@RequestParam(value="suppId")String suppId,@RequestParam(value="docname") String docname)
	{
		loger.info("check customer document exist or not");
		boolean flag=false;
		flag=suppdocservice.checkDocementExist(Integer.parseInt(suppId),docname);
		String returnText=null;
	        if(flag){
	        
	        	//cpservice.savecustProcessRate(custprocessrateobj);
	            returnText = "  Document Name Exists  ";
	        }else{
	            returnText = "1";
	        }
	       
	        Gson gson=new Gson();
			String json=gson.toJson(returnText);
			return json;
	  
	}
	
	

}
