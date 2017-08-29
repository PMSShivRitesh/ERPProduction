package com.productionapp.dao.pp;

import java.sql.SQLException;
import java.util.List;

import com.productionapp.model.pp.ProcessDetail;
import com.productionapp.model.pp.ProcessModel;

public interface ProcessDao {
	boolean saveProcess(ProcessDetail processdetail) throws SQLException;
	List<String>getProcessList() throws SQLException;
	public List<ProcessDetail> getppAllProcessDetail() throws SQLException;

}
