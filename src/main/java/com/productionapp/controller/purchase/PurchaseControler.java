package com.productionapp.controller.purchase;

import org.dom4j.rule.Mode;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class PurchaseControler {
	
	@RequestMapping("/CreatePurchaseOrder")
	public ModelAndView getPurchaseOrderForm(){
		ModelAndView model =new ModelAndView("/Purchase/createpurchaseorder");
		return model;
	}

}
