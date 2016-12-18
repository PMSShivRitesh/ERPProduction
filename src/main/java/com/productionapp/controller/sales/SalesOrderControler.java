package com.productionapp.controller.sales;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.productionapp.bean.SalesOrderModel;
import com.productionapp.model.sales.SalesOrderItems;
import com.productionapp.service.customer.CustomerDetailService;
import com.productionapp.service.sales.SalesOrderService;

@RestController
public class SalesOrderControler {
	@Autowired
	SalesOrderService salesorderservice;

	@Autowired
	CustomerDetailService custservice;
	
	private Logger loger=Logger.getLogger(SalesOrderControler.class);
	
	@RequestMapping("/salesorderhome")
	public ModelAndView getSalesOrderEntryForm(){
		ModelAndView model=new ModelAndView("/Sales/salesorderhome");
		return model;
	}
	
	@RequestMapping(value="/savesalesOrderDetail")
	public String savesalesOrderDetail(@RequestBody SalesOrderModel salesordermodel){

		loger.info("Save Sales Order");
		loger.info("po no= "+salesordermodel.getPoNo());
		int custId=custservice.getCustId(salesordermodel.getCustName());
		salesordermodel.setCustId(custId);
		salesordermodel.setSaleorderno(Integer.toString(salesorderservice.saveSalesOrderDetail(salesordermodel)));
		salesorderservice.saveSalesOrderItems(salesordermodel);
		List<SalesOrderItems>salesorderitemlst=salesorderservice.getSalesOrderitems(Integer.parseInt(salesordermodel.getSaleorderno()));
		Gson gson = new Gson();
	    String json = gson.toJson(salesorderitemlst); 
		return json;
	
	}
	
	
	


}
