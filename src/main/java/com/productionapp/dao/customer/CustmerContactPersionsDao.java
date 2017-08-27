package com.productionapp.dao.customer;

import java.util.List;

import com.productionapp.model.customer.CustomerContactPersions;



public interface CustmerContactPersionsDao {
	public void saveCustomerContactPersions(CustomerContactPersions custcontactmodel);
	public List<CustomerContactPersions>getCustomerContactPersionList(int custid);
	public boolean checkContactPersionExist(int custId,String cpersionname);
	public boolean deleteCustomerContactPersion(int custitemid);

}
