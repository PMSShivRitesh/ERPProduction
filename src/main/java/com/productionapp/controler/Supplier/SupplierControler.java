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
import com.productionapp.model.SupplierConatactPersions;
import com.productionapp.model.SupplierDetail;
import com.productionapp.service.CountryService;
import com.productionapp.service.SupplierContactsService;
import com.productionapp.service.SupplierDocumetnsService;
import com.productionapp.service.SupplierService;

@RestController
public class SupplierControler {
	@Autowired
	CountryService countryservice;
	@Autowired
	SupplierService suppservice;
	@Autowired
	SupplierDocumetnsService suppdocservice;
	@Autowired
	SupplierContactsService suppcontactservice;
	
	Logger loger=Logger.getLogger(SupplierControler.class);
	@RequestMapping("/addsupplier")
	public ModelAndView getSupplierDetailAddForm()
	{
		loger.info("Get Supplier Form");
		ModelAndView model=new ModelAndView("/Supplier/addsupplier");
		Map<String,String> countryllst=countryservice.getCountryListForDropdown();
			model.addObject("countryllst",countryllst);
		
		return model;
	}
	
	@RequestMapping("/saveSupplierDetail")
	public ModelAndView saveSupplierDetail(@ModelAttribute("supplierobj")SupplierDetail supplierobj)
	{
		loger.info("Save supplier detail");
		ModelAndView model = null;
		suppservice.saveSupplierDetail(supplierobj);
		int suppid=suppservice.getSupplierId(supplierobj.getSuppName());
		loger.info("get id"+suppid);
		model=new ModelAndView("/Supplier/addsuppcontactpeople");
		model.addObject("suppId",suppid);
		return model;
	}
	
	@RequestMapping("/checksupplierexist")
	 public String checksupplierexist(@RequestParam(value="suppName")String suppName) throws Exception
	{
		boolean flag=false;
		flag=suppservice.checkSuppNameExist(suppName);
		String returnText=null;
	        if(flag){
	        
	        	//cpservice.savecustProcessRate(custprocessrateobj);
	            returnText = "Supplier Exists " ;
	        }else{
	            returnText = "1";
	        }
	       
	        Gson gson=new Gson();
			String json=gson.toJson(returnText);
			return json;
	  
	}
	
	@RequestMapping("/suppnameautocompList")
	String getDepartment(@RequestParam("term")String term) throws Exception
	{
		loger.info("Supplier Name Autocompleter");
		String json;
		try{
			List<String> list =suppservice.suppNameAutocompleter(term);
			Gson gson=new Gson();
			json=gson.toJson(list);
		}catch(Exception e){
			throw new Exception();
		}
		return json;
	
		
	}

	@RequestMapping("/searchsupplier")
	public ModelAndView getSupplierDetailForm()
	{
		loger.info("Get Search Supplier Form");
		ModelAndView model=new ModelAndView("/Supplier/searchsupplier");
		return model;
	}
	

	@RequestMapping("/getSuppDetail")
	public ModelAndView getCustomerDeatail(@RequestParam("suppName")String suppName) throws Exception
	{
		loger.info("get supplier detail");
		ModelAndView model;
		try{
			model= new ModelAndView("/Supplier/searchsupplier");
			int suppid=suppservice.getSupplierId(suppName);
			SupplierDetail supplierdetail=suppservice.getsupplierdetail(suppid);
			List suppdoclst=suppdocservice.getSuppDocumentsList(suppid);
			model.addObject("suppdoclst", suppdoclst);
			List<SupplierConatactPersions> suppconatctlst=new LinkedList<SupplierConatactPersions>();
			suppconatctlst=suppcontactservice.getSuppConatacts(suppid);
			model.addObject("suppId", suppid);
			model.addObject("suppconatctlst",suppconatctlst);
			model.addObject("supplierdetail",supplierdetail);
		}catch(Exception e){
			throw new Exception();
		}
		return model;
	}
	
	@RequestMapping("/suppdetailedit")
	public ModelAndView getsuppdetailedit(@RequestParam("suppId")String suppId) throws Exception
	{
		loger.info("get supplier detail for edit purpose");
		ModelAndView model;
		try{
			model= new ModelAndView("/Supplier/editsuppdetail");
			SupplierDetail supplierdetail=suppservice.getsupplierdetail(Integer.parseInt(suppId));
			model.addObject("suppId", suppId);
			model.addObject("supplierdetail",supplierdetail);
		}catch(Exception e){
			throw new Exception();
		}
	
		return model;
	}
	
	@RequestMapping("/updateSuppDetail")
	public ModelAndView updateSuppDetail(@ModelAttribute("obj")SupplierDetail suppobj) throws Exception
	{
		loger.info("update supplier detail"+suppobj.getSuppId());
		
		ModelAndView model = null;
		
		try {
					model=new ModelAndView("/Supplier/suppdetailedit");
					suppservice.updateSupplierDetail(suppobj);
			
		}
		catch(Exception e)
		{
			throw new Exception();
		}
		
		 return model;
	}
	
	
	@RequestMapping("/supplist")
	public ModelAndView custlistRequest() throws Exception
	{
		ModelAndView model=new ModelAndView("/Supplier/supplist");
		List<SupplierDetail>supplst=suppservice.getSuppList();
		model.addObject("supplst",supplst);
		return model;
	}
	
}
