package com.productionapp.controler.quotation;

import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.productionapp.service.RM.BasicRmSerivce;
import com.productionapp.service.RM.RawMaterialService;

@RestController
public class QuotationControler {
	@Autowired
	BasicRmSerivce basicrmservice;
	@Autowired
	RawMaterialService rawMaterialService;
/*	@Autowired
	ProcessServicess pservice;
	@Autowired
	QuotationProcessService qpservice;
	
	@Autowired
	QServicess qservices;
	@Autowired
	InstrumentService iservice;
	@Autowired
	OperationServices opertionservice;
	@Autowired CustItemService itemservice;
	*/
	@RequestMapping("/createquatition")
	public ModelAndView getQuotationEntryForm() throws SQLException
	{
		ModelAndView model=new ModelAndView("/Quotation/cratequotation");
		Map brmlst=basicrmservice.getBRMGradeNameList();
		
		model.addObject("brmlst",brmlst);
		
		//List<String>rmshapelst=rawMaterialService.getRMShapeList();
		//model.addObject("rmshapelst",rmshapelst);
		
		//String qno=qservices.getqno();
		//model.addObject("qno",qno);
		
		return model;
	}
	
	@RequestMapping("/qoutationDetail")
	public ModelAndView getQuotationDetailForm()
	{
		ModelAndView model=new ModelAndView("/Quotation/QoutationDetailRequest");
		
		return model;
		
	}
	
	/*
	@RequestMapping("/saveQuotationDetail")
	public ModelAndView saveQuotationDetail(@ModelAttribute("qmodelobj")QuotationModel qmodelobj) throws SQLException
	{
		boolean flag=qservices.saveQuotationDetail(qmodelobj);
		ModelAndView model=new ModelAndView("/Quotation/QuotationForm2");
		List<String> processlist=pservice.getProcessList();
		
		List<String>intrumentlst=iservice.getInstrumentLst();
		model.addObject("intrumentlst",intrumentlst);
		
		model.addObject("processlist",processlist);
		model.addObject("custName",qmodelobj.getCustName());
		model.addObject("qNo",qmodelobj.getqNo());
		model.addObject("itemCode",qmodelobj.getItemCode());
		return model;
	}
	
	@RequestMapping("/saveQItemRMDetail")
	public @ResponseBody String saveQItemRMDetail(@ModelAttribute("qmodelobj")QuotationModel qmodelobj) throws SQLException
	{
		String msg="false";
		boolean flag=qservices.saveQuotationItemRMDetail(qmodelobj);
		 if(flag)
		 {
			 msg = "true" ;
	     }else
	     {
	           msg = "false";
	      }
	       return msg;
		
		
	}
	
	
	@RequestMapping("/getQuotationDetail")
	public ModelAndView getQuotationDetail(@RequestParam("qno")String qNo) throws SQLException
	{
		ModelAndView model=new ModelAndView("/Quotation/QoutationDetailRequest");
		QuotationModel quotationdetaillobj=qservices.getQuotationDetail(qNo);
		List<QuotationModel>quotationitemdetail=qservices.getQuotationItemDetail(qNo);
		List<OperationModel>quotationoperationDetaillst=opertionservice.getQOperations(qNo);
		List<QprocessModel>quotationprocessDetaillst=qpservice.getQprocess(qNo);
		model.addObject("quotationdetaillobj",quotationdetaillobj);
		model.addObject("quotationoperationDetaillst",quotationoperationDetaillst);
		model.addObject("quotationprocessDetaillst",quotationprocessDetaillst);
		model.addObject("quotationitemdetail",quotationitemdetail);
		return model;
		
	}
	
	
	
	
	@RequestMapping("/QoutationDetailRequest")
	public ModelAndView getQuotationDetailForm()
	{
		ModelAndView model=new ModelAndView("/Quotation/QoutationDetailRequest");
		
		return model;
		
	}
	
	@RequestMapping("/saveQShapeDetail")
	public ModelAndView saveQShapeDetail(@ModelAttribute("qmaterialshape")QMaterialShapePojo qmaterialshape) throws SQLException
	{
		qservices.saveQMaterialShape(qmaterialshape);
		ModelAndView model=new ModelAndView("/Quotation/QoutationCreateInputRequest");
		return model;
		
	}
	
	
	@RequestMapping("/calculateRMRate")
	public @ResponseBody List calculateRMRate(@RequestParam(value="rmname")String rmname,@RequestParam(value="rmshapenm")String rmshapenm,@RequestParam(value="qNo")String qNo) throws SQLException
	{
		
		System.out.print("hello");
		List<QItemDetailPojo>rmrateJsonlstforquotation=qservices.calculateRMRate(rmname, rmshapenm, qNo);
		
		return rmrateJsonlstforquotation;
	}
	
	
	
	@RequestMapping("/getQuotationForm4")
	public ModelAndView getQuotationProcessForm(@RequestParam("qno") String qno,@RequestParam("custName") String custName) throws SQLException
	{
		ModelAndView model=new ModelAndView("/Quotation/QuotationForm4");
		//List<QuotationModel>quotationlstforform4=qservices.getQuotationDetailForForm4(qno);
		
		List<String>brmgradelst=new LinkedList<>();
		brmgradelst=rawMaterialService.getBRGrade();
		model.addObject("brmgradelst",brmgradelst);
		List<String>rmshapelst=rawMaterialService.getRMShapeList();
		List<CustItemModel>itemcodelst=itemservice.getItemCodeList(custName);
		
		model.addObject("itemcodelst",itemcodelst);
		model.addObject("rmshapelst",rmshapelst);
		
		model.addObject("qno",qno);
		model.addObject("custName",custName);
		return model;
		
	}
	*/

}
