package com.productionapp.controler;

import org.apache.log4j.Logger;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class SystemsControler {
	private Logger loger=Logger.getLogger(SystemsControler.class);
	
	@RequestMapping("/systemRequest")
	public ModelAndView getSystemAddForn()
	{
		loger.info("Get Availble Systems");
		ModelAndView model=new ModelAndView("/admin/SystemInputInsert");
		
			//Map<String,String> modellst=systemdaobj.getModuleList();
			//model.addObject("lists",modellst);
		
		return model;
		
	}
	
	

}
