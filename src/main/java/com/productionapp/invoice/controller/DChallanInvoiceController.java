package com.productionapp.invoice.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class DChallanInvoiceController {
	

	@RequestMapping("/dchallaninvoice")
	public ModelAndView getInvoiceCreateForm()
	{
		ModelAndView model=new ModelAndView("/Sales/dchallaninvoice");
		
		return model;
	}
}
