package com.productionapp.service.RM;

import java.sql.SQLException;
import java.util.List;

import com.productionapp.model.RM.RawMaterial;
import com.productionapp.model.RM.RawMaterialGrade;
import com.productionapp.model.RM.RawMaterialShapeRange;


public interface RawMaterialService {
	boolean saveRMGradeDetail(RawMaterialGrade rmmodel) throws SQLException;
	
	
	List<String>getBRGrade()throws SQLException;
	
	boolean saveRmGrade(RawMaterialGrade rmgrade) throws SQLException;
	public List getRMGradeNameBaseOnIdList(String bgradeid);
	
	boolean saveRmShape(String rmShapeName) throws SQLException;
	List<String>getRMShapeList()throws SQLException;
	
	List<RawMaterial> addSahpeDetail(RawMaterial rawMaterial) throws SQLException;
	
	List<RawMaterial> getSahpeDetailInJsonList(String rmShapeName) throws SQLException;
	
	List<RawMaterialShapeRange>getMaterialShapeRangeForJson(String shapename,String dim1,String dim2,String dim3)throws SQLException;
	boolean saveMaterialShapeRange(RawMaterialShapeRange rawMaterialRange) throws SQLException;

	List<RawMaterialShapeRange>getJsonSupplierForQuotationList(String range,String shapename)throws SQLException;
	List<RawMaterialShapeRange>getSupplierRateForQuotation(String name,String rmSize,String rmshapenm)throws SQLException;
	
}
