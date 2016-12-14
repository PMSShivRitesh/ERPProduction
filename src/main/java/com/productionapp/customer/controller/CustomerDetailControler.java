package com.productionapp.customer.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.google.gson.Gson;
import com.productionapp.customer.model.CustomerContactPersions;
import com.productionapp.customer.model.CustomerDetail;
import com.productionapp.customer.model.CustomerDocuments;
import com.productionapp.customer.service.CustmerContactPersionsService;
import com.productionapp.customer.service.CustomerDetailService;
import com.productionapp.customer.service.CustomerDocumentService;

import com.productionapp.service.CountryService;


@EnableWebMvc
@RestController
public class CustomerDetailControler {
	private Logger loger=Logger.getLogger(CustomerDetailControler.class);
	@Autowired
	CountryService countryservice;
	@Autowired
	CustomerDetailService custservice;
	@Autowired
	CustmerContactPersionsService custcontactpeopleservice;
	@Autowired
	CustomerDocumentService custdocservice;
	@RequestMapping("/addcustomer")
	public ModelAndView getCustomerDetailAddForm()
	{
			loger.info("Get Customer Detail Add Form");
			ModelAndView model=new ModelAndView("/Customer/addcustomer");
			Map<String,String> countryllst=countryservice.getCountryListForDropdown();
			model.addObject("countryllst",countryllst);
		
		return model;
	}
	
	
	@RequestMapping("/checkcustomerexist")
	 public String checkcustomerexist(@RequestParam(value="custName")String custname) 
	{
		loger.info("Chect custmer exist or not");
		boolean flag=false;
		flag=custservice.checCustomerExist(custname);
		String returnText=null;
	        if(flag){
	        
	        	//cpservice.savecustProcessRate(custprocessrateobj);
	            returnText = "Customer Exists " ;
	        }else{
	            returnText = "1";
	        }
	       
	        Gson gson=new Gson();
			String json=gson.toJson(returnText);
			return json;
	  
	}
	
	
	@RequestMapping("/saveCustomerDetail")
	public ModelAndView saveCustomerDetail(@ModelAttribute("customerobj")CustomerDetail customerobj)
	{
		ModelAndView model = null;
		loger.info("Save new customer detail");
		
				if(custservice.saveCustomerDetail(customerobj))
				{
					model=new ModelAndView("/Customer/addcustomer");
					
					
				}
				else
				{
					 model=new ModelAndView("/Customer/addContactPersions");
					 int custId=custservice.getCustId(customerobj.getCustName());
					 model.addObject("custId",Integer.toString(custId));
					
				}
			
	
		
		 return model;
	}
	
	@RequestMapping("/searchcustomer")
	public ModelAndView getCustomerDetailForm(){
		loger.info("Get customer detail");
		ModelAndView model = new ModelAndView("/Customer/SearchCustomer");
		return model;
	}

	@RequestMapping("/custlisthome")
	public ModelAndView custlistRequest() {
		ModelAndView model=new ModelAndView("/Customer/custlisthome");
		List<CustomerDetail>custlst=custservice.getCustList();
		Iterator itr=custlst.iterator();
		while(itr.hasNext()){
			CustomerDetail obj=(CustomerDetail)itr.next();
			loger.info(obj.getCustName());
		}
		model.addObject("custlst",custlst);
		return model;
	}
	
	
	@RequestMapping(value ="/getCustNameList")
	public /*List*/String  custNameautocomplete(@RequestParam("term")String term) {
		loger.info("Customer Name Autocompleter  " +term);
		List<String>list=new ArrayList<String>();	
		list = custservice.getCustNameAutocompleter(term);
		Gson gson = new Gson();
	    String json = gson.toJson(list); 
		return json;
		//List<CustomerDetail>lst=new ArrayList<CustomerDetail>();
		//CustomerDetail obj=new CustomerDetail();
		//obj.setCustName("Hanmant");
		//lst.add(obj);
		//Gson gson =new Gson();
		//gsonstring=gson.toJson(lst);
		
		//return lst;
		//return list;
		//return new  ResponseEntity(lst, HttpStatus.OK);
	}
	
	
	
	@RequestMapping("/getCustAllDetail")
	public ModelAndView getCustomerAllDeatail(@RequestParam("custName")String custName) 
	{
		loger.info("Get Custgomer All Detail");
		ModelAndView model = new ModelAndView("/Customer/SearchCustomer");
		int custId=custservice.getCustId(custName);
		CustomerDetail customerdetail=custservice.getCustomerDetail(custId);
		List<CustomerContactPersions> custconatctlst=custcontactpeopleservice.getCustomerContactPersionList(custId);
		List<CustomerDocuments>customerregnolst=custdocservice.getCustomerDocDetail(custId);
		model.addObject("custconatctlst",custconatctlst);
		model.addObject("customerregnolst",customerregnolst);
		model.addObject("customerdetail",customerdetail);
		return model;
	}
	
	
	@RequestMapping("/editCustDetailform")
	public ModelAndView getCustomerDetail(@RequestParam("custId")String custId) 
	{
		loger.info("Get Customer Data Editable Form");
		ModelAndView model=new ModelAndView("/Customer/editcustdetail");
		CustomerDetail customerdetail=custservice.getCustomerDetail(Integer.parseInt(custId));
		model.addObject("customerdetail",customerdetail);
		return model;
	}
	
	@RequestMapping("/updateCustDetail")
	public ModelAndView updateCustomerDetail(@ModelAttribute("customerobj")CustomerDetail customerobj)
	{
		ModelAndView model = null;
		loger.info("Edit Customer Data");
		custservice.updateCustomerDetail(customerobj);
		model=new ModelAndView("/Customer/custDetailEditInputRequest");
		return model;
	}
	
	
@RequestMapping(value ="/getApplyeTaxOfCustomer")
	
	public String getApplyeTaxOfCustomer(@ModelAttribute("customerobj")CustomerDetail customerobj) 
	{
		loger.info("Get Apply taxes on customer "+customerobj.getCustName());
		int custId=custservice.getCustId(customerobj.getCustName());
		loger.info("custid test   "+ custId);
		List<CustomerDetail> customertaxlst=custservice.getApplyeTaxOfCustomer(custId);
		Gson gson=new Gson();
		String json=gson.toJson(customertaxlst);
		return json;
	}
	
}
