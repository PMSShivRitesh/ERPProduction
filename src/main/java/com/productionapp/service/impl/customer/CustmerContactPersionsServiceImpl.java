package com.productionapp.customer.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.productionapp.customer.dao.CustmerContactPersionsDao;
import com.productionapp.customer.model.CustomerContactPersions;
import com.productionapp.customer.service.CustmerContactPersionsService;



@Service("customercontactpersionsservice")
@Transactional
public class CustmerContactPersionsServiceImpl implements CustmerContactPersionsService {
	@Autowired
	CustmerContactPersionsDao dao;

	public void saveCustomerContactPersions(
			CustomerContactPersions custcontactmodel) {
		dao.saveCustomerContactPersions(custcontactmodel);
		// TODO Auto-generated method stub
		
	}

	public List<CustomerContactPersions> getCustomerContactPersionList(
			int custid) {
		// TODO Auto-generated method stub
		return dao.getCustomerContactPersionList(custid);
	}

	public boolean checkContactPersionExist(int custId, String cpersionname) {
		// TODO Auto-generated method stub
		return dao.checkContactPersionExist(custId, cpersionname);
	}

	public boolean deleteCustomerContactPersion(int contactPesrsionId) {
		// TODO Auto-generated method stub
		return dao.deleteCustomerContactPersion(contactPesrsionId);
	}
	

}
