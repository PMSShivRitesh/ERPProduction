package com.productionapp.dao.impl.pp;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.productionapp.dao.pp.ProcessDao;
import com.productionapp.model.pp.ProcessDetail;

@Repository("processDao")
public class ProcessDaoImpl implements ProcessDao {

	@Autowired
	SessionFactory sessionfactory;
	Logger loger=Logger.getLogger(ProcessDaoImpl.class);
	@Override
	public boolean saveProcess(ProcessDetail processdetail){
			loger.info("adding processdetail");
			sessionfactory.getCurrentSession().save(processdetail);
			return false;
		
	}


	@Override
	public Map getProcessList() throws SQLException {
		loger.info("get process name list for dropdown");
		Map<Integer, String>processnamelst=new LinkedHashMap<>();
		List<ProcessDetail>lst=sessionfactory.getCurrentSession().createCriteria(ProcessDetail.class).list();
		Iterator processlstitr=lst.iterator();
		while(processlstitr.hasNext()){
			ProcessDetail processdetail=(ProcessDetail)processlstitr.next();
			processnamelst.put(processdetail.getProcessId(), processdetail.getProcessName());
		}
		
		return processnamelst;
	}
	
	
	@Override
	public List<ProcessDetail> getppAllProcessDetail() throws SQLException {
		return sessionfactory.getCurrentSession().createCriteria(ProcessDetail.class).list();
		}
	
	
	

}
