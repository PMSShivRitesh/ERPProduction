package com.productionapp.service.pp;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.productionapp.model.pp.ProcessDetail;


public interface ProcessServicess {
	boolean saveProcess(ProcessDetail processdetail) throws SQLException;
	public Map getProcessList() throws SQLException;
	public List<ProcessDetail> getppAllProcessDetail() throws SQLException;
	

}
