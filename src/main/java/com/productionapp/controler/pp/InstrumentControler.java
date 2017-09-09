package com.productionapp.controler.pp;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.productionapp.model.pp.InstrumentModel;
import com.productionapp.service.pp.InstrumentService;



@Controller
public class InstrumentControler {
	
	@Autowired
	InstrumentService iservice;
	
	@RequestMapping("/addinstrument")
	public ModelAndView getInstrumentInsertForm()
	{
		ModelAndView model=new ModelAndView("/PP/addInstrumentDetail");
		return model;
	}
	
	@RequestMapping("/saveInstrumentDatail")
	 public @ResponseBody String saveInstrumentDatail(@ModelAttribute("instrumentModelObj") InstrumentModel instrumentModelObj,BindingResult result) throws SQLException
		{
			 String returnText;
		        if(!result.hasErrors()){
		        	iservice.saveInstrumentDetail(instrumentModelObj);
		            returnText = "Instrument Detail has been added Successfully. " ;
		        }else{
		            returnText = "Sorry, an error has occur.";
		        }
		        return returnText;
		}

}
