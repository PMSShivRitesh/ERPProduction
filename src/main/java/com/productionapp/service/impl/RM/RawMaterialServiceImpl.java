package com.productionapp.service.impl.RM;

import java.sql.SQLException;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.productionapp.dao.RM.RawMaterialDAO;
import com.productionapp.model.RM.RawMaterial;
import com.productionapp.model.RM.RawMaterialGrade;
import com.productionapp.model.RM.RawMaterialShapeRange;
import com.productionapp.service.RM.RawMaterialService;
@Transactional
@Service("rawmaterialservice")
public class RawMaterialServiceImpl implements RawMaterialService {

	@Autowired
	RawMaterialDAO dao;
	
	@Override
	public boolean saveRmGrade(RawMaterialGrade rmgrade)
			throws SQLException {
		// TODO Auto-generated method stub
		return dao.saveRmGrade(rmgrade);
	}
	@Override
	public List getRMGradeNameBaseOnIdList(String bgradeid) {
		// TODO Auto-generated method stub
		return dao.getRMGradeNameBaseOnIdList(bgradeid);
	}
	@Override
	public boolean saveRMGradeDetail(RawMaterialGrade rmmodel) throws SQLException {
		// TODO Auto-generated method stub
		return dao.saveRMGradeDetail(rmmodel);
	}
	
	@Override
	public boolean saveRmShape(String rmShapeName) throws SQLException {
		// TODO Auto-generated method stub
		return dao.saveRmShape(rmShapeName);
	}
	@Override
	public List<RawMaterial> addSahpeDetail(RawMaterial rawMaterial) throws SQLException {
		// TODO Auto-generated method stub
		return dao.addSahpeDetail(rawMaterial);
	}
	@Override
	public boolean saveMaterialShapeRange(RawMaterialShapeRange rawMaterialRange) throws SQLException {
		// TODO Auto-generated method stub
		return dao.saveMaterialShapeRange(rawMaterialRange);
	}
	@Override
	public List<String> getBRGrade() throws SQLException {
		// TODO Auto-generated method stub
		return dao.getBRGrade();
	}
	
	@Override
	public List<String> getRMShapeList() throws SQLException {
		// TODO Auto-generated method stub
		return dao.getRMShapeList();
	}
	@Override
	public List<RawMaterialShapeRange> getMaterialShapeRangeForJson(
			String shapename,String dim1,String dim2,String dim3) throws SQLException {
		// TODO Auto-generated method stub
		return dao.getMaterialShapeRangeForJson(shapename,dim1,dim2,dim3);
	}
	@Override
	public List<RawMaterialShapeRange> getJsonSupplierForQuotationList(
			String range,String shapename) throws SQLException {
		// TODO Auto-generated method stub
		return dao.getJsonSupplierForQuotationList(range,shapename);
	}
	@Override
	public List<RawMaterialShapeRange> getSupplierRateForQuotation(String name,String rmSize,String rmshapenm)
			throws SQLException {
		// TODO Auto-generated method stub
		return dao.getSupplierRateForQuotation(name,rmSize,rmshapenm);
	}
	@Override
	public List<RawMaterial> getSahpeDetailInJsonList(String rmShapeName)
			throws SQLException {
		// TODO Auto-generated method stub
		return dao.getSahpeDetailInJsonList(rmShapeName);
	}
	
	
	

}
