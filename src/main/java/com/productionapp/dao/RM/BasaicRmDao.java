package com.productionapp.dao.RM;

import java.util.Map;

import com.productionapp.model.RM.BasicRM;

public interface BasaicRmDao {
	public boolean saveBRMGrade(BasicRM basicrm);
	public Map getBRMGradeNameList();

}
