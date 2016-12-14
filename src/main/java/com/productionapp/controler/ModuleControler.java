package com.productionapp.controler;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.productionapp.model.Modules;
import com.productionapp.service.ModuleService;

@RestController
public class ModuleControler {

	@Autowired
	ModuleService moduleservice;
	private Logger loger=Logger.getLogger(ModuleControler.class);
	@RequestMapping("/moduleRequest")
	public ModelAndView getModuleAddForn()
	{
		loger.info("Get Production App Modules Form");;
		ModelAndView model=new ModelAndView("/admin/moduleInputInsert");
		List<Modules>mlst=moduleservice.getModuleList();
		loger.info("size of list"+mlst.size()+mlst);
		model.addObject("mlst",mlst);
		return model;
		
	}
	
	@RequestMapping("/usermoduleaccessRequest")
	public ModelAndView usermoduleaccessRequestForn()
	{
		ModelAndView model=new ModelAndView("/admin/usermoduleaccess");
		

		return model;
		
	}
}
