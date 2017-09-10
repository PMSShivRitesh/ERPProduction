package com.productionapp.dao.impl.RM;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.productionapp.dao.RM.BasaicRmDao;
import com.productionapp.model.RM.BasicRM;

@Repository("basicrmdaoimpl")
public class BasicRmDaoImpl implements BasaicRmDao {
	@Autowired
	SessionFactory sessionfactory;
	@Override
	public boolean saveBRMGrade(BasicRM basicrm) {
		sessionfactory.getCurrentSession().save(basicrm);
		return false;
	}
	public Map getBRMGradeNameList(){
		Map<Integer,String>brmgradelst=new LinkedHashMap<Integer,String>();
		List<BasicRM>lst=sessionfactory.getCurrentSession().createCriteria(BasicRM.class).list();
		Iterator lstitr=lst.iterator();
		while(lstitr.hasNext()){
			BasicRM basicrmgrade=(BasicRM)lstitr.next();
			brmgradelst.put(basicrmgrade.getBrmId(),basicrmgrade.getBrmName());
		}
		return brmgradelst;
	}

}
