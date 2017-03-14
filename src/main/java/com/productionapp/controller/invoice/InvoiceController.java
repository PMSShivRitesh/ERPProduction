package com.productionapp.controller.invoice;

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
import com.productionapp.bean.InvoiceModel;
import com.productionapp.model.dchallan.DchallanItems;
import com.productionapp.model.invoice.InvoiceItemDetail;
import com.productionapp.service.customer.CustomerDetailService;
import com.productionapp.service.invoice.DChallanInvoiceService;
import com.productionapp.service.invoice.InvoiceService;

@RestController
public class InvoiceController {
	@Autowired
	DChallanInvoiceService dchallaninvoiceservice;
	@Autowired
	CustomerDetailService custservice;
	@Autowired
	InvoiceService invoiceservice;
	private Logger loger=Logger.getLogger(InvoiceController.class);
	@RequestMapping(value="/custinvoicelst")
	public ModelAndView custInvoiceDetail(){
		   loger.info("All Invoice List");
			ModelAndView model=new ModelAndView("/Sales/invoicelst");
			List dchallaninvoicelst=dchallaninvoiceservice.getInvoiceDetailLst();
			model.addObject("dchallaninvoicelst",dchallaninvoicelst);
			return model;
	}
	
	@RequestMapping(value="createinvoice")
	public ModelAndView createinvoice(){
		loger.info("Craete Normal Invoice");
		ModelAndView model=new ModelAndView("/Sales/normalinvoice");
		return model;
	}
	

	@RequestMapping("/saveInvoice")
	public String saveInvoice(@RequestBody InvoiceModel invoicemodel){
		
		loger.info("Save Invoice ");
	
		int custId=custservice.getCustId(invoicemodel.getCustName());
		invoicemodel.setCustId(custId);
		invoicemodel.setInvoiceno(Integer.toString(invoiceservice.createInvoice(invoicemodel)));
		invoiceservice.saveInvoiceItems(invoicemodel);
		List<InvoiceItemDetail>  invoiceitems =invoiceservice.getInvoiceItemList(Integer.parseInt(invoicemodel.getInvoiceno()));
		Gson gson = new Gson();
	   String json = gson.toJson(invoiceitems); 
		return json;
	}
	
	@RequestMapping("deleteinvoiceitem")
	public String deleteInvoiceItems(@RequestParam(value="srno")String srno){
		loger.info("Delete Invoice Items");
		invoiceservice.deleteinvoiceitems(Integer.parseInt(srno));
		return "";
	}
	
}
