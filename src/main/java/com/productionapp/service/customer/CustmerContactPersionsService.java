package com.productionapp.service.customer;

import java.util.List;

import com.productionapp.model.customer.CustomerContactPersions;


public interface CustmerContactPersionsService {

	public void saveCustomerContactPersions(CustomerContactPersions custcontactmodel);
	public List<CustomerContactPersions>getCustomerContactPersionList(int custid);
	public boolean checkContactPersionExist(int custId,String cpersionname);
	public boolean deleteCustomerContactPersion(int contactPesrsionId);
}
