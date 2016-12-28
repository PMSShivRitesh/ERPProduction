package com.productionapp.controller.invoice;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.productionapp.service.invoice.DChallanInvoiceService;

@RestController
public class InvoiceController {
	@Autowired
	DChallanInvoiceService dchallaninvoiceservice;
	private Logger loger=Logger.getLogger(InvoiceController.class);
	@RequestMapping(value="/custinvoicelst")
	public ModelAndView custInvoiceDetail(){
		   loger.info("All Invoice List");
			ModelAndView model=new ModelAndView("/Sales/invoicelst");
			List dchallaninvoicelst=dchallaninvoiceservice.getInvoiceDetailLst();
			model.addObject("dchallaninvoicelst",dchallaninvoicelst);
			return model;
	}
	
	@RequestMapping(value="createinvoice")
	public ModelAndView createinvoice(){
		loger.info("Craete Normal Invoice");
		ModelAndView model=new ModelAndView("/Sales/normalinvoice");
		return model;
	}

}
