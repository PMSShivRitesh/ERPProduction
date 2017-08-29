package com.productionapp.controler.pp;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import com.google.gson.Gson;
import com.productionapp.service.pp.OperationServices;


@RestController

public class OperationControler {
//	@Autowired
	//ProcessServicess pservice;
	@Autowired
	OperationServices oservice;
	
	@RequestMapping("/addoperation")
	public ModelAndView getOperationInputForm() throws SQLException
	{
			ModelAndView model=new ModelAndView("/PP/ppOperationInputRequest");
		//	List<String>processlist=pservice.getProcessList();
			//model.addObject("processlist",processlist);
			return model;
		
	}
	/*
	@RequestMapping("saveOperation")
	public ModelAndView saveOpeartion(@ModelAttribute("operationModel") OperationModel operationModel) throws SQLException
	{
		ModelAndView model=new ModelAndView("/PP/ppOperationInputRequest");
		oservice.saveOperation(operationModel);
		return model;
	}

	
	@RequestMapping("/getJsonOperationList")
	public @ResponseBody String getJsonRawMaterialShapeRangeList(@RequestParam(value="name")String shapename) throws SQLException
	{
		
		List<OperationModel>operationjsonlst=oservice.getOpertionJsonList(shapename);
		Gson gson= new Gson();
		String json=gson.toJson(operationjsonlst);
		
		return json;
	}*/
	
	

}
