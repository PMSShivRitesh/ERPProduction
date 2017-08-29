package com.productionapp.controler.pp;

import java.sql.SQLException;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.productionapp.model.pp.ProcessDetail;
import com.productionapp.service.pp.ProcessServicess;
@RestController
public class ProcessControler {
	Logger loger=Logger.getLogger(ProcessControler.class);
	@Autowired
	ProcessServicess pservice;
	@RequestMapping("/addprocess")
	public ModelAndView getProcessInputForm() throws Exception
	{
		ModelAndView model;
		try{
			model=new ModelAndView("/PP/addProcessRequest");
		}catch(Exception e){
			throw new Exception();
		}
		return model;
	}
	
	@RequestMapping("saveProcess")
	public ModelAndView saveProcess(@ModelAttribute("processdetail")ProcessDetail processdetail) throws Exception
	{
		ModelAndView model;
		try{	
				model=new ModelAndView("/PP/ppProcessInputRequest");
				pservice.saveProcess(processdetail);
		}catch(Exception e){
			throw new Exception();
		}
		return model;
	}
	

}
