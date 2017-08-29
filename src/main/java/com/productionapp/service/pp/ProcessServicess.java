package com.productionapp.service.pp;

import java.sql.SQLException;
import java.util.List;

import com.productionapp.model.pp.ProcessDetail;


public interface ProcessServicess {
	boolean saveProcess(ProcessDetail processdetail) throws SQLException;
	List<String>getProcessList() throws SQLException;
	public List<ProcessDetail> getppAllProcessDetail() throws SQLException;
	

}
