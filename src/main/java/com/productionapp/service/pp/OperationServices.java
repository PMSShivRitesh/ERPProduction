package com.productionapp.service.pp;

import java.sql.SQLException;
import java.util.List;

import com.productionapp.model.pp.OperationModel;

public interface OperationServices {
	boolean saveOperation(OperationModel opeation)throws SQLException;
	List<OperationModel> getOpertionJsonList(String processname) throws SQLException;

}
