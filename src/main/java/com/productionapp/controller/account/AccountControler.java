package com.productionapp.controller.account;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.productionapp.dao.account.custPaymentDao;
import com.productionapp.model.account.CustPayment;
import com.productionapp.service.account.CustPaymentService;
import com.productionapp.service.customer.CustomerDetailService;
import com.productionapp.service.invoice.DChallanInvoiceService;

@RestController
public class AccountControler {
	private Logger loger=Logger.getLogger(AccountControler.class);
	@Autowired
	CustPaymentService custpaymentservice;
	@Autowired
	CustomerDetailService custservice;
	@Autowired
	DChallanInvoiceService dchallaninvoice;
	
	
	@RequestMapping(value="/paymententry")
	public ModelAndView getCustPaymentEntryForm(){
		ModelAndView model=new ModelAndView("/account/custPayment");
		return model;
	}
	
	@RequestMapping(value="/savePaymentEntry")
	public ModelAndView savePaymentEntry(@ModelAttribute(value="custpayment")CustPayment custpayment){
		loger.info("Save Customer Payment");
		int custId=custservice.getCustId(custpayment.getCustName());
		custpayment.setCustId(custId);
		ModelAndView model=new ModelAndView("/account/custPayment");
		custpaymentservice.saveCustomerPayment(custpayment);
		if(custpayment.getBalance().equals("0"))
		{
			dchallaninvoice.updateDchallanInvoiceStatus(custpayment.getInvoiceno(), "Closed");
		}
		return model;
	}
	
	@RequestMapping(value="/getCustCreditedAmt")
	public String getCustCreditedAmt(@RequestParam(value="invoiceno")String invoiceno){
		loger.info("Get customer creadited amount");
		String camt=custpaymentservice.getCustBillCrediAmt(Integer.parseInt(invoiceno));
		Gson gson=new Gson();
		String json=gson.toJson(camt);
		return json;
	}
	
	@RequestMapping(value="/custInvoiceBalanceSheetForm")
	public ModelAndView custInvoiceBalanceShhetForm(){
		loger.info("Get customer Balance Sheet");
		ModelAndView model=new ModelAndView("/account/custInvoiceBalanceSheet");
		return model;
	}
	
	
	@RequestMapping(value="/getCustInvoiceBalanceSheet")
	public ModelAndView getCustInvoiceBalanceSheet(@RequestParam(value="custName")String custName){
		loger.info("Get customer Balance Sheet");
		ModelAndView model=new ModelAndView("/account/custInvoiceBalanceSheet");
		int custId=custservice.getCustId(custName);
		List lst1=dchallaninvoice.getCustInvoiceDetailLst(custId);
		List lst2=custpaymentservice.getCustCreditDetailLst(custId);
		model.addObject("lst1",lst1);
		model.addObject("lst2",lst2);
		model.addObject("custName",custName);
	
		return model;
	}
	

}
