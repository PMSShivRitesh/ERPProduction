package com.productionapp.controller.RM;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.productionapp.model.RM.BasicRM;
import com.productionapp.service.RM.BasicRmSerivce;

@RestController
public class BasicRMControler {
	@Autowired
	BasicRmSerivce basicrmservice;
	Logger loger=Logger.getLogger(BasicRMControler.class);
	@RequestMapping("/addBasicRMGrade")
	public ModelAndView addBasicRMGradeFrom(){
		loger.info("Add Basic RM Grade");
		ModelAndView model =new ModelAndView("/RawMaterial/addbasicrmgrade");
		return model;
	}
	
	@RequestMapping("saveBasicRMGrade")
	public ModelAndView saveBasicRMGrade(@ModelAttribute BasicRM basicrm)
	{
		ModelAndView model=new ModelAndView("/RawMaterial/addbasicrmgrade");
		basicrmservice.saveBRMGrade(basicrm);
		return model;
	}
	
	
/*	@RequestMapping("basicRMGradeSave")
	public ModelAndView saveRmGrade(@ModelAttribute("rmgradeobj")RawMaterialGrade rmgradeobj) throws SQLException
	{
		ModelAndView model=new ModelAndView("/RawMaterial/RawMaterialGradeInputRequest"); 
		rawMaterialService.saveRmGrade(rmgradeobj);
		return model;
	}*/

}
