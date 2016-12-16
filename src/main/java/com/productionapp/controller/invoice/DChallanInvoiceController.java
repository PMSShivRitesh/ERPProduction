package com.productionapp.controller.invoice;


import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.productionapp.customer.service.CustomerDetailService;
import com.productionapp.dchallan.model.DchallanDetail;
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

	private Logger loger=Logger.getLogger(DChallanInvoiceController.class);
	@RequestMapping("/dchallaninvoice")
	public ModelAndView getInvoiceCreateForm()
	{
		ModelAndView model=new ModelAndView("/Sales/dchallaninvoice");
		
		return model;
	}
	
	
	@RequestMapping("/dchallaninvoicedisplay")
	public ModelAndView dchallaninvoice(@RequestParam(value="custName")String custName,@RequestParam(value="dchallanno")String dchallanno)
	{
		ModelAndView model=new ModelAndView("/Sales/dchallaninvoice");
		
		loger.info("get Dchallan Invoice Items");
		int custId=custservice.getCustId(custName);
		List lst=dchallaninvoiceservice.getInvoiceDchallanItems(custId, Integer.parseInt(dchallanno));
		DchallanDetail dchllanobj=dchallanserive.getDchallandetail(Integer.parseInt(dchallanno));
		model.addObject("lst",lst);
		model.addObject("custName",custName);
		model.addObject("dchallanno",dchallanno);
		model.addObject("dchllanobj",dchllanobj);
		return model;
		
	}
}
