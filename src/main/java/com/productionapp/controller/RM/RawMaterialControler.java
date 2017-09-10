package com.productionapp.controller.RM;
import java.sql.SQLException;
import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import com.productionapp.model.RM.RawMaterialGrade;
import com.productionapp.service.SupplierService;
import com.productionapp.service.RM.BasicRmSerivce;
import com.productionapp.service.RM.RawMaterialService;



@Controller
public class RawMaterialControler {
	@Autowired
	BasicRmSerivce basicrmservice;;
	
	@Autowired
	SupplierService supplierservice;
	@Autowired
	RawMaterialService rmservice;
	
	@RequestMapping("/addRawMaterialGrade")
	public ModelAndView getBasicRawMaterialGradeForm(){
		ModelAndView model=new ModelAndView("/RawMaterial/addRMGrade");
		Map<Integer,String>brmgradelst=basicrmservice.getBRMGradeNameList();
		model.addObject("brmgradelst",brmgradelst);
		//List<String>supplierNameList=supplierservice.getSuppNameLst();
		//model.addObject("supplierNameList",supplierNameList);
		return model;
	}
	@RequestMapping("/saveRmGradeDetail")
	public ModelAndView saveRmGradeDetail(@ModelAttribute RawMaterialGrade rawmaterialgrade){
		ModelAndView model=new ModelAndView("/RawMaterial/addRMGrade");
		try {
			rawmaterialgrade.setSupplierId(supplierservice.getSupplierId(rawmaterialgrade.getSuppName()));
			rmservice.saveRMGradeDetail(rawmaterialgrade);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Map<Integer,String>brmgradelst=basicrmservice.getBRMGradeNameList();
		model.addObject("brmgradelst",brmgradelst);
		return model;
	}
	
/*	@RequestMapping("saveBasicRMGrade")
	public ModelAndView saveBasicRMGrade(@RequestParam(value="brmgname") String brmgname) throws SQLException
	{
		ModelAndView model=new ModelAndView("/RawMaterial/BasicRawMaterialInputReuest");
		rawMaterialService.saveBRMGrade(brmgname);
		return model;
	}
	
	
	@RequestMapping("/getJsonRawMaterialList")
	public @ResponseBody String getJsonRawMaterialList(@RequestParam(value="name")String brGrade) throws SQLException
	{
		
		List<RawMaterialGrade>rmgradejsonlst=rawMaterialService.getRMGradeListForJson(brGrade);
		
		Gson gson = new Gson();
	    String json = gson.toJson(rmgradejsonlst); 
		
		return json;
	}
	
	
	
	
	@RequestMapping("/RawMaterialShapeInputRequest")
	public ModelAndView getRawMaterialShapeInputForm()
	{
		ModelAndView model=new ModelAndView("/RawMaterial/RawMaterialShapeInputRequest");
		return model;
		
	}
	@RequestMapping("saveRmShape")
	public ModelAndView saveRmShape(@RequestParam(value="shapeName") String shapeName) throws SQLException
	{
		ModelAndView model=new ModelAndView("/RawMaterial/RawMaterialShapeInputRequest");
		rawMaterialService.saveRmShape(shapeName);
		return model;
	}
	
	@RequestMapping("/RawMaterialShapeDetailInputRequest")
	public ModelAndView getRawMaterialDetailInputForm() throws SQLException
	{
		ModelAndView model=new ModelAndView("/RawMaterial/RawMaterialShapeDetailInputRequest");
		List<String>rmshapelst=rawMaterialService.getRMShapeList();
		model.addObject("rmshapelst",rmshapelst);
		return model;
	}
	@RequestMapping("addShapeDetail")
	public ModelAndView addShapeDetail(@ModelAttribute("rawMaterial") RawMaterial rawMaterial) throws SQLException
	
	{
		List<RawMaterial>  rmShapeDetailList=new LinkedList<>();
		ModelAndView model=new ModelAndView("/RawMaterial/RawMaterialShapeDetailInputRequest");
		rmShapeDetailList=rawMaterialService.addSahpeDetail(rawMaterial);
		model.addObject("rmShapeDetailList", rmShapeDetailList);
		return model;
	}
	
	
	@RequestMapping("/getJsonShapeDimensionList")
	public @ResponseBody List getgetJsonShapeDimensionList(@RequestParam(value="name")String rmShapeName) throws SQLException
	{
		
		List<RawMaterial>ShapeDimensionJsonlst=rawMaterialService.getSahpeDetailInJsonList(rmShapeName);
		
		return ShapeDimensionJsonlst;
	}
	
	
	
	@RequestMapping("/RawMaterialShapeRangeRequest")
	public ModelAndView getMaterialShapeRange() throws SQLException
	{
		ModelAndView model=new ModelAndView("/RawMaterial/RawMaterialShapeRangeRequest");
		//List<String>rmshapelst=rawMaterialService.getRMShapeList();
		List<String>supplierNameList=supplierservice.getSuppNameLst();
		model.addObject("supplierNameList",supplierNameList);
		//model.addObject("rmshapelst",rmshapelst);
		return model;
	}
	@RequestMapping("saveMaterialShapeRange")
	public ModelAndView saveMaterialShapeRange(@ModelAttribute("rawMaterialShapeRange") RawMaterialShapeRange rawMaterialShapeRange) throws SQLException
	{
		boolean flag=false;
		String msg;
		ModelAndView model=new ModelAndView("/RawMaterial/RawMaterialShapeRangeRequest");
		flag=rawMaterialService.saveMaterialShapeRange(rawMaterialShapeRange);
		List<String>rmshapelst=rawMaterialService.getRMShapeList();
		List<String>supplierNameList=supplierservice.getSuppNameLst();
		model.addObject("supplierNameList",supplierNameList);
		model.addObject("rmshapelst",rmshapelst);
		if(flag)
		{
			msg="Successfully Insert";
		}
		else
		{
			msg="Failed To Insert";
		}
		
		model.addObject("msg",msg);
		return model;
	}
	
	
	
@RequestMapping("/getJsonShapeRangeList")
public @ResponseBody String getJsonRawMaterialShapeRangeList(@RequestParam(value="name")String shapename,@RequestParam(value="dim1")String dim1,@RequestParam(value="dim2")String dim2,@RequestParam(value="dim3")String dim3) throws SQLException
{
	
		
		List<RawMaterialShapeRange>rmgradejsonlst=rawMaterialService.getMaterialShapeRangeForJson(shapename,dim1,dim2,dim3);
		
		Gson gson=new Gson();
		String json=gson.toJson(rmgradejsonlst);
		return json;
	}
	
	


	@RequestMapping("/getJsonSupplierForQuotationList")
	public @ResponseBody String getJsongetJsonSupplierForQuotationList(@RequestParam(value="name")String range,@RequestParam(value="rmshapenm")String getJsonSupplierForQuotationList) throws SQLException
	{
		
		List<RawMaterialShapeRange>supplierJsonlstforquotation=rawMaterialService.getJsonSupplierForQuotationList(range,getJsonSupplierForQuotationList);
		
		Gson gson = new Gson();
		String json=gson.toJson(supplierJsonlstforquotation);
		return json;
	}
	
	
	
	@RequestMapping("/getSupplierRateForQuotation")
	public @ResponseBody String  getSupplierRateForQuotation(@RequestParam(value="name")String supplier,
			@RequestParam(value="rmSize") String rmSize,
			@RequestParam(value="rmshapenm") String rmshapenm) throws SQLException
	{
		
		List<RawMaterialShapeRange>supplierJsonlstforquotation=rawMaterialService.getSupplierRateForQuotation(supplier,rmSize,rmshapenm);
		
		Gson gson=new Gson();
		String json=gson.toJson(supplierJsonlstforquotation);
		return json;
	}*/
}
