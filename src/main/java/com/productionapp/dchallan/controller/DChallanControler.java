package com.productionapp.dchallan.controller;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.productionapp.bean.DChallanModel;
import com.productionapp.customer.service.CustomerDetailService;
import com.productionapp.dchallan.model.DchallanDetail;
import com.productionapp.dchallan.model.DchallanItems;
import com.productionapp.dchallan.service.DchallanService;


@RestController
public class DChallanControler {
	private Logger loger=Logger.getLogger(DChallanControler.class);
	@Autowired
	DchallanService dchallanservice;
	@Autowired
	CustomerDetailService custservice;
	
	@RequestMapping("/dchallnhome")
	public ModelAndView getDchallanForm(){
		ModelAndView model =new ModelAndView("/Dchallan/dchallanhome");
		
		return model;
		
	}
	
	@RequestMapping("/dchallanlst")
	public ModelAndView getdchallanlst(){
		ModelAndView model =new ModelAndView("/Dchallan/dchallanlst");
		List<DchallanDetail>lst=dchallanservice.getallDchallanList();
		model.addObject("lst",lst);
		return model;
		
	}
	
	@RequestMapping("/updatedchallanstatus")
	public String updatedchallanstatus(@RequestParam(value="dchallanno") String dchallanno,@RequestParam(value="status") String status){
		loger.info("update D.Challan Status");
		dchallanservice.updateDchallanStatus(Integer.parseInt(dchallanno), status);
		return "success";
		
	}
	
	@RequestMapping("/dchallandetail")
	public ModelAndView getdchallandetail(@RequestParam(value="dchallanno") String dchallanno){
		loger.info("Gate D.Challan Detail");
		ModelAndView model =new ModelAndView("/Dchallan/dchallandetail");
		List<DchallanItems>lst=dchallanservice.getDchallanItemList(Integer.parseInt(dchallanno));
		DchallanDetail dchllanobj=dchallanservice.getDchallandetail(Integer.parseInt(dchallanno));
		model.addObject("dchllanobj",dchllanobj);
		model.addObject("lst", lst);
		String custName=custservice.getCustName(dchllanobj.getCustId());
		model.addObject("custName",custName);
		return model;
		
	}
	
	
	@RequestMapping("/saveDChallan")
	public String saveDChallan(@RequestBody DChallanModel dchallan){
		loger.info("Save Dchallan"+dchallan.getCustName());
		int custId=custservice.getCustId(dchallan.getCustName());
		dchallan.setCustId(custId);
		dchallan.setDchallanno(Integer.toString(dchallanservice.saveDchallanDetail(dchallan)));
		dchallanservice.saveDchallanItems(dchallan);
		List<DchallanItems>lst=dchallanservice.getDchallanItemList(Integer.parseInt(dchallan.getDchallanno()));
		Gson gson = new Gson();
	    String json = gson.toJson(lst); 
		return json;
	}
	
	@RequestMapping("/deletedchallanitems")
	public String deletedchallanitems(@RequestParam(value="srno")String srno){
		loger.info("Delete Delivery Challan=" +srno);
		 dchallanservice.deletedchallanitems(Integer.parseInt(srno));
		return null;
	}

}
