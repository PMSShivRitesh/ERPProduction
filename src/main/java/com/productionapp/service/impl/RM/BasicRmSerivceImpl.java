package com.productionapp.service.impl.RM;

import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.productionapp.dao.RM.BasaicRmDao;
import com.productionapp.model.RM.BasicRM;
import com.productionapp.service.RM.BasicRmSerivce;

@Transactional
@Service("basicrmserviceimpl")
public class BasicRmSerivceImpl implements BasicRmSerivce{

	@Autowired
	BasaicRmDao basicrmdao;
	@Override
	public boolean saveBRMGrade(BasicRM basicrm) {
		return basicrmdao.saveBRMGrade(basicrm);
	}
	@Override
	public Map getBRMGradeNameList() {
		return basicrmdao.getBRMGradeNameList();
	}

}
