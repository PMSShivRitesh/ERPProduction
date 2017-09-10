package com.productionapp.service.RM;

import java.util.Map;

import com.productionapp.model.RM.BasicRM;

public interface BasicRmSerivce {
	boolean saveBRMGrade(BasicRM basicrm);
	public Map getBRMGradeNameList();
}
