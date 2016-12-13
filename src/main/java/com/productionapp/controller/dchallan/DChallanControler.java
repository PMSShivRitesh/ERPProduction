package com.productionapp.controller.dchallan;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
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
import com.productionapp.service.dchallan.DchallanService;


@RestController
public class DChallanControler {
	
	private Logger loger=Logger.getLogger(DChallanControler.class);
	@Autowired
	DchallanService dchallanservice;
	@Autowired
	CustomerDetailService custservice;
	
	@RequestMapping("/dchallnhome")
	public ModelAndView getDchallanForm(){
		loger.info("In getDchallanForm");
		ModelAndView model =new ModelAndView("/Dchallan/dchallanhome");
		return model;
		
	}
	
	@RequestMapping("/dchallanlst")
	public ModelAndView getdchallanlst(){
		
		loger.info("In getdchallanlst"); 
		ModelAndView model =new ModelAndView("/Dchallan/dchallanlst");
		List<DchallanDetail> dchallanDetailList = dchallanservice.getallDchallanList();
		model.addObject("lst",dchallanDetailList);
		return model;
		
	}
	
	@RequestMapping("/dchallandetail")
	public ModelAndView getdchallandetail(@RequestParam(value="dchallanno") String dchallanno){
		
		loger.info("Gate D.Challan Detail "+dchallanno);
		ModelAndView model =new ModelAndView("/Dchallan/dchallandetail");
		int dchallannoInt=-1;
		try{
			dchallannoInt = Integer.parseInt(dchallanno);
		}catch (Exception e) {
			loger.error("Error ",e);
		}
		if(dchallannoInt>=0){
			List<DchallanItems>lst=dchallanservice.getDchallanItemList(dchallannoInt);
			DchallanDetail dchllanobj=dchallanservice.getDchallandetail(dchallannoInt);
			model.addObject("dchllanobj",dchllanobj);
			model.addObject("lst", lst);
			String custName=custservice.getCustName(dchllanobj.getCustId());
			model.addObject("custName",custName);
		}else{
			model.addObject("dchllanobj",null);
			model.addObject("lst", null);
		}
		return model;
		
	}
	
	@RequestMapping("/saveDChallan")
	public String saveDChallan(@RequestBody DChallanModel dchallan){
		
		loger.info("Save Dchallan"+dchallan.getCustName());
		int custId=custservice.getCustId(dchallan.getCustName());
		dchallan.setCustId(custId);
		dchallan.setDchallanno(Integer.toString(dchallanservice.saveDchallanDetail(dchallan)));
		dchallanservice.saveDchallanItems(dchallan);
		List<DchallanItems>  dchallanItemsList = dchallanservice.getDchallanItemList(Integer.parseInt(dchallan.getDchallanno()));
		Gson gson = new Gson();
	    String json = gson.toJson(dchallanItemsList); 
		return json;
	}
	
	@RequestMapping("/deletedchallanitems")
	public String deletedchallanitems(@RequestParam(value="srno")String srno){
		loger.info("Delete Delivery Challan=" +srno);
		int srnoInt = -1;
		try{
			srnoInt =Integer.parseInt(srno);
		}catch (Exception e) {
			loger.error("Error ",e);
		}
		if(srnoInt>=0){
			dchallanservice.deletedchallanitems(srnoInt);
		}
		return null;
	}

}
