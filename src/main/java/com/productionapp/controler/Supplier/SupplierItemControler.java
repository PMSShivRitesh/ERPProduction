package com.productionapp.controler.Supplier;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class SupplierItemControler {
	
	@RequestMapping("/supplieritem")
	public ModelAndView getSupplierItemForm(){
		ModelAndView model=new ModelAndView("/Supplier/suppitem");
		return model;
	}

}
