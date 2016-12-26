package com.productionapp.controller.invoice;


import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.productionapp.model.customer.CustomerDetail;
import com.productionapp.model.dchallan.DchallanDetail;
import com.productionapp.model.invoice.DChallanInvoiceDetail;
import com.productionapp.service.customer.CustomerDetailService;
import com.productionapp.service.dchallan.DchallanService;
import com.productionapp.service.invoice.DChallanInvoiceService;


@RestController
public class DChallanInvoiceController {
	@Autowired
	CustomerDetailService custservice;
	@Autowired
	DChallanInvoiceService dchallaninvoiceservice;
	@Autowired
	DchallanService dchallanserive;
	@Autowired
	CustomerDetailService custdetailserrvice;
	

	private Logger loger=Logger.getLogger(DChallanInvoiceController.class);
	@RequestMapping("/dchallaninvoice")
	public ModelAndView getInvoiceCreateForm()
	{
		ModelAndView model=new ModelAndView("/Sales/dchallaninvoice");
		
		return model;
	}
	
	
	@RequestMapping("/dchallaninvoicedisplay")
	public ModelAndView dchallaninvoice(@RequestParam(value="custName")String custName,@RequestParam(value="dchallanno1")String dchallanno)
	{
		ModelAndView model=new ModelAndView("/Sales/dchallaninvoice");
		
		loger.info("get Dchallan Invoice Items");
		int custId=custservice.getCustId(custName);
		List lst=dchallaninvoiceservice.getInvoiceDchallanItems(custId, Integer.parseInt(dchallanno));
		DchallanDetail dchllanobj=dchallanserive.getDchallandetail(Integer.parseInt(dchallanno));
		CustomerDetail custdetail=custdetailserrvice.getApplyeTaxOfCustomer(custId);
		model.addObject("lst",lst);
		model.addObject("custdetail",custdetail);
		model.addObject("custName",custName);
		
		model.addObject("dchallanno",dchallanno);
		model.addObject("dchllanobj",dchllanobj);
	
		return model;
		
	}
	
	@RequestMapping("/createdchallaninvoice")
	public String createdchallaninvoice(@ModelAttribute(value="dchallaninvoicedetail") DChallanInvoiceDetail dchallaninvoicedetail){
		loger.info("Create Dchallan Invoice  "+dchallaninvoicedetail.getCustName());
		int custId=custservice.getCustId(dchallaninvoicedetail.getCustName());
		dchallaninvoicedetail.setCustId(custId);
		int invoiceno=dchallaninvoiceservice.createDchallanInvoice(dchallaninvoicedetail);
		dchallanserive.updateDchallanStatus(dchallaninvoicedetail.getDchallanNo(), "Closed");
		return Integer.toString(invoiceno);
		
	}
	
	
	@RequestMapping(value="/dchallaninvoicedetail")
	public ModelAndView getDchallanInvoiceDetail(@RequestParam(value="invoiceno")String invoceno){
		ModelAndView model=new ModelAndView("/Sales/DchallanInvoiceDetail");
		loger.info("Get Dchallan Invoice Detail");
		return model;
		
	}
	
	@RequestMapping(value="/dchallaninvoicenolst")
	public String getdchallaninvoicenolst(@RequestParam(value="custName")String custName,@RequestParam(value="status")String status){
			loger.info("Get Invoice No List");
			int custId=custservice.getCustId(custName);
			List lst=dchallaninvoiceservice.getInvoiceNolst(custId,status);
			Gson gson=new Gson();
			String json=gson.toJson(lst);
		return json;
		
	}
	
	@RequestMapping(value="/dchallaninvoiceamt")
	public String dchallaninvoiceamt(@RequestParam(value="invoiceno")String invoiceno){
			loger.info("Get Invoice Bill Amount");
			
			String amount=dchallaninvoiceservice.getBillAmount(Integer.parseInt(invoiceno));
			Gson gson=new Gson();
			String json=gson.toJson(amount);
		return json;
		
	}
}
