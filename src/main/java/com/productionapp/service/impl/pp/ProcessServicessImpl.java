package com.productionapp.service.impl.pp;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.productionapp.dao.pp.ProcessDao;
import com.productionapp.model.pp.ProcessDetail;
import com.productionapp.service.pp.ProcessServicess;

@Transactional
@Service("processService")
public class ProcessServicessImpl implements ProcessServicess {
	
	@Autowired
	ProcessDao dao;
	@Override
	public boolean saveProcess(ProcessDetail processdetail) throws SQLException {
		// TODO Auto-generated method stub
		return dao.saveProcess(processdetail);
	}
	
	@Override
	public List<ProcessDetail> getppAllProcessDetail() throws SQLException {
		// TODO Auto-generated method stub
		return dao.getppAllProcessDetail();
	}

	@Override
	public Map getProcessList() throws SQLException {
		// TODO Auto-generated method stub
		return dao.getProcessList();
	}
	

}
