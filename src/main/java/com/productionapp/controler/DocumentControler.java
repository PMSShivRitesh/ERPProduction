package com.productionapp.controler;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.productionapp.model.Document;
import com.productionapp.service.DocumentService;

@RestController
public class DocumentControler {
	@Autowired
	DocumentService docservice;

	private Logger loger=Logger.getLogger(DocumentControler.class);
	@RequestMapping("/documenthome")
	public ModelAndView getcommanDocumentNameInsertRequestFrom()
	{
		loger.info("get Docement form");
		ModelAndView model=new ModelAndView("/Comman/documenthome");
		List<String>documentlst=docservice.getDocumentList();
		model.addObject("documentlst",documentlst);
		return model;
		
	}
	
	@RequestMapping("/saveDocumentName")
	public String saveDocumentName(@ModelAttribute(value="docobj")Document docobj)
	{
		loger.info("insert new document"+docobj.getDocumentName());
		 String returnText = null;
		 boolean flag=false;
	     
	        	
	        	flag=docservice.saveDocument(docobj);
	        	if(flag)
	        	{
	        		 returnText = "Document has been added Successfully. " ;
	        		
	        	}
	        	else
	        	{
	        		  returnText = "Sorry, an error has occur.";
	        	}
	        
	        return returnText;
	}
	
	@RequestMapping("/deletedocument")
	public String deletedocument(@RequestParam("dname")String dname) 
	{
		String msg="";
		loger.info("delete doc"+dname);
		docservice.deleteDoc(dname);
		return msg;
		
	}
}
