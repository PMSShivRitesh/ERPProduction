package com.productionapp.service.impl.pp;

import java.sql.SQLException;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.productionapp.dao.pp.OperationDAO;
import com.productionapp.model.pp.OperationModel;
import com.productionapp.service.pp.OperationServices;

@Transactional
@Service("operationService")
public class OperationServicesImpl implements OperationServices{

	@Autowired 
	OperationDAO dao;
	@Override
	public boolean saveOperation(OperationModel opeation) throws SQLException {
		// TODO Auto-generated method stub
		return dao.saveOperation(opeation);
	}
	@Override
	public List<OperationModel> getOpertionJsonList(String processname) throws SQLException {
		// TODO Auto-generated method stub
		return dao.getOpertionJsonList(processname);
	}
	

	

}
