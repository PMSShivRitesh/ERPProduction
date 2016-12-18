package com.productionapp.dao.customer;

import java.util.List;

import com.productionapp.model.customer.CustomerDetail;



public interface CustomerDetailDao {
	public int getCustId(String custName);
	boolean saveCustomerDetail(CustomerDetail mobj);
	public boolean checCustomerExist(String custname);
	public List<String> getCustNameAutocompleter(String custname);
	public CustomerDetail getCustomerDetail(int custid);
	public boolean updateCustomerDetail(CustomerDetail mobj);
	public List<CustomerDetail> getCustList();
	public CustomerDetail getApplyeTaxOfCustomer(int custID);
	public String getCustName(int custId);

}
