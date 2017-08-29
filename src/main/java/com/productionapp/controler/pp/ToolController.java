package com.productionapp.controler.pp;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.productionapp.model.pp.ToolModel;
import com.productionapp.service.pp.ToolService;

@Controller
public class ToolController {
	@Autowired
	ToolService toolservice;
	
	@RequestMapping("addtool")
	public ModelAndView gettollinsertform()
	{
		ModelAndView model=new ModelAndView("/PP/pptoolsinputRequest");
		return model;
	}
	
	
	@RequestMapping("deletetool")
	public @ResponseBody String  deletetools(@RequestParam("toolName")String toolname)
	{
		String msg="";
		toolservice.deleteTool(toolname);
		return msg;
	}
	
	
	
	@RequestMapping("ppgettoollstRequest")
	public ModelAndView ppgettoollstRequest()
	{
		ModelAndView model=new ModelAndView("/PP/ppgettoollstRequest");
		List<ToolModel>toolst=toolservice.getToolLst();
		model.addObject("toolst",toolst);
		return model;
	}
	
	
	
	
	@RequestMapping("saveToos")
	public @ResponseBody String saveToos(@RequestParam(value="toolName") String toolName) throws SQLException
	{
		String msg="";
		boolean flag=false;
		flag=toolservice.addTools(toolName);
		if(flag)
		{
			msg="Successfully Added";
		}
		else
		{
			msg="Already Exists";
		}
		return msg;
	}

}
