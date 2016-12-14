package com.productionapp.customer.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.apache.log4j.pattern.LogEvent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.productionapp.customer.model.CustomerDocuments;
import com.productionapp.customer.service.CustomerDocumentService;


import com.productionapp.service.DocumentService;

@RestController
public class CustomerDocumentControler {

	@Autowired
	DocumentService docserivce;
	@Autowired
	CustomerDocumentService custdocservice;
	private Logger loger=Logger.getLogger(CustomerDocumentControler.class);
		

	@RequestMapping("/addDocumets")
	public ModelAndView getCustomerDocumentForm(@RequestParam(value="custId") String custId) 
	{
		loger.info("Get Form document register");
		ModelAndView model=new ModelAndView("/Customer/addDocumets");
		Map<String,String> documentNamelst=docserivce.getDocumentsListForDropdown();
		model.addObject("documentNamelst",documentNamelst);
		model.addObject("custId",custId);
		
		return model;
	}
	
	@RequestMapping("/checkdocumentexist")
	 public  String checkdocumentexist(@RequestParam(value="custId")String custId,@RequestParam(value="docname") String docname)
	{
		loger.info("check customer document exist or not");
		boolean flag=false;
		flag=custdocservice.checkDocementExist(Integer.parseInt(custId),docname);
		String returnText=null;
	        if(flag){
	        
	        	//cpservice.savecustProcessRate(custprocessrateobj);
	            returnText = "Document Number Exists " ;
	        }else{
	            returnText = "1";
	        }
	       
	        Gson gson=new Gson();
			String json=gson.toJson(returnText);
			return json;
	  
	}
	@RequestMapping("/addCustomerRegisterNo")
	public ModelAndView addCustomerRegisterNo(@ModelAttribute("custdocmodelobj") CustomerDocuments custdocmodelobj ) 
	{
		loger.info("add customer document detail");
		ModelAndView model;
		
		//if(custdocmodelobj.getCustId()!=0){
			//	model=new ModelAndView("/Customer/CustomerEditRegisterNumbersRequest");
			//}else{
			model=new ModelAndView("/Customer/addDocumets");
		//	}
			
			
			
			
			/* InputStream inputStream = null;
			 OutputStream outputStream = null;

			 MultipartFile file = custdocmodelobj.getFile();
		
			 String fileName = file.getOriginalFilename();
		  
			  try {
				inputStream = file.getInputStream();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			  File newFile = new File("C:/" + fileName);
			  String path=newFile.getPath();
			  custdocmodelobj.setDocloc(path);
			 loger.info("file name"+custdocmodelobj.getFile());
			  if (!newFile.exists())
			  {
				  try {
					newFile.createNewFile();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			  }
			  try {
				outputStream = new FileOutputStream(newFile);
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			  int read = 0;
			  byte[] bytes = new byte[1024];

			  try {
				while ((read = inputStream.read(bytes)) != -1) {
					  outputStream.write(bytes, 0, read);
				  }
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}*/
		  
		custdocservice.saveCustomerDocumentsDetail(custdocmodelobj);
		List<CustomerDocuments> custdoclst=new LinkedList<CustomerDocuments>();
		custdoclst=custdocservice.getCustomerDocDetail(custdocmodelobj.getCustId());
		model.addObject("custdoclst",custdoclst);
		
		model.addObject("custId",custdocmodelobj.getCustId());
		Map<String,String> documentNamelst=docserivce.getDocumentsListForDropdown();
		model.addObject("documentNamelst",documentNamelst);
		return model;
	}

	
	

	@RequestMapping("/deletecustomerdocument")
	 public String deletedocument(@RequestParam(value="custDocId")String custDocId) 
	{
		boolean flag=false;
		flag=custdocservice.deleteCustomerDocuments(Integer.parseInt(custDocId));
			return "deleted";
	  
	}
}


