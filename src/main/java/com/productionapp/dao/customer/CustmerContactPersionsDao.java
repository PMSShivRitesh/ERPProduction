package com.productionapp.customer.dao;

import java.util.List;

import com.productionapp.customer.model.CustomerContactPersions;



public interface CustmerContactPersionsDao {
	public void saveCustomerContactPersions(CustomerContactPersions custcontactmodel);
	public List<CustomerContactPersions>getCustomerContactPersionList(int custid);
	public boolean checkContactPersionExist(int custId,String cpersionname);
	public boolean deleteCustomerContactPersion(int contactPesrsionId);

}
