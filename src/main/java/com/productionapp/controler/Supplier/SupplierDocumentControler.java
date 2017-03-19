package com.productionapp.controler.Supplier;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

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
		try{
				Map<String,String> documentNamelst=docserivce.getDocumentsListForDropdown();
				model.addObject("documentNamelst",documentNamelst);
				model.addObject("suppId",suppId);
		}
		catch(Exception e)
		{
			throw new Exception();
		}
		return model;
	}
	
	
	
	@RequestMapping("/savesuppDocuments")
	public ModelAndView savesuppDocuments(@ModelAttribute(value="suppdocobj")SupplierDocuments suppdocobj) throws Exception
	{
		loger.info("Add Supplier Documetns");
		ModelAndView model=new ModelAndView("/Supplier/addSuppDocuments");
		try{
				Map<String,String> documentNamelst=docserivce.getDocumentsListForDropdown();
				suppdocservice.addSuppDocuments(suppdocobj);
				List suppdoclst=suppdocservice.getSuppDocumentsList(suppdocobj.getSuppId());
				model.addObject("suppdoclst", suppdoclst);
				model.addObject("documentNamelst",documentNamelst);
				model.addObject("suppId",suppdocobj.getSuppId());
		}
		catch(Exception e)
		{
			throw new Exception();
		}
		return model;
	}
	
	
	@RequestMapping("/deletesuppdocument")
	public String deletesuppdocument(@RequestParam(value="suppDocId")String suppDocId) throws Exception
	{
		loger.info("Delete Supplier Documetns");
		
		try{
			suppdocservice.deletesuppDocuments(Integer.parseInt(suppDocId));	
		}
		catch(Exception e)
		{
			throw new Exception();
		}
		return null;
	}

}
